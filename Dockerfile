FROM fsharp/fsharp
MAINTAINER Tomas Petricek

RUN git clone https://github.com/tpetricek/fsharp-web-editors-demo.git app
RUN mv app/* app/.paket* .
RUN mono .paket/paket.bootstrapper.exe
RUN mono .paket/paket.exe restore

CMD ["fsharpi","app.fsx"]