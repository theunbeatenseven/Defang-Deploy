# Use the official node image as a base image
FROM node:20-alpine

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

#Build the Next.js app
RUN npm run build

# Expose the port the app runs on
EXPOSE 3000

CMD ["npm", "start"]
