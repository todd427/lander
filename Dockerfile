# Use a minimal nginx image
FROM nginx:alpine

# Remove default Nginx landing page
RUN rm -rf /usr/share/nginx/html/*

# Copy your site into the Nginx web root
COPY . /usr/share/nginx/html

# Expose HTTP port
EXPOSE 80

# Start Nginx in foreground (important for Docker)
CMD ["nginx", "-g", "daemon off;"]
