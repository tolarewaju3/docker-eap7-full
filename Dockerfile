FROM jboss/base-maven

WORKDIR /opt/jboss

COPY . .

RUN unzip -q jboss-eap-7.3.0.zip \
&& rm jboss-eap-7.3.0.zip

EXPOSE 8080

CMD ["/opt/jboss/jboss-eap-7.3/bin/standalone.sh", "-c","standalone-full.xml", "-b", "0.0.0.0"]

