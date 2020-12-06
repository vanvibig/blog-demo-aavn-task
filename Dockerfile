FROM tomee:8-jre-7.0.8-plume

ADD src/main/webapp/WEB-INF/resources.xml /usr/local/tomee/conf/tomee.xml
COPY postgresql-42.2.18.jar /usr/local/tomee/lib/postgresql-42.2.18.jar
ADD target/blog.war /usr/local/tomee/webapps/

#USER tomee
EXPOSE 8080
CMD ["catalina.sh", "run"]