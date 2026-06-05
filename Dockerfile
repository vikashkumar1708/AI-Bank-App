# base image of java
FROM eclipse-temurin:25-jdk-jammy

WORKDIR /app

COPY . .

# install libraries of maven
RUN chmod +x mvnw && ./mvnw clean package -DskipTests


EXPOSE 8080

ENTRYPOINT ["sh","-c","java -jar target/*.jar"]
