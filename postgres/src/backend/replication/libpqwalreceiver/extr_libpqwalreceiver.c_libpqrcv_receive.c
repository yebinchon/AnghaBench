
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pgsocket ;
struct TYPE_3__ {char* recvBuf; int streamConn; } ;
typedef TYPE_1__ WalReceiverConn ;
typedef int PGresult ;


 scalar_t__ CONNECTION_BAD ;
 int ERROR ;
 scalar_t__ PGRES_COMMAND_OK ;
 scalar_t__ PGRES_COPY_IN ;
 int PQclear (int *) ;
 scalar_t__ PQconsumeInput (int ) ;
 int PQerrorMessage (int ) ;
 int PQfreemem (char*) ;
 int PQgetCopyData (int ,char**,int) ;
 scalar_t__ PQresultStatus (int *) ;
 int PQsocket (int ) ;
 scalar_t__ PQstatus (int ) ;
 int ereport (int ,int ) ;
 int errmsg (char*,int ) ;
 int * libpqrcv_PQgetResult (int ) ;
 int pchomp (int ) ;

__attribute__((used)) static int
libpqrcv_receive(WalReceiverConn *conn, char **buffer,
     pgsocket *wait_fd)
{
 int rawlen;

 if (conn->recvBuf != ((void*)0))
  PQfreemem(conn->recvBuf);
 conn->recvBuf = ((void*)0);


 rawlen = PQgetCopyData(conn->streamConn, &conn->recvBuf, 1);
 if (rawlen == 0)
 {

  if (PQconsumeInput(conn->streamConn) == 0)
   ereport(ERROR,
     (errmsg("could not receive data from WAL stream: %s",
       pchomp(PQerrorMessage(conn->streamConn)))));


  rawlen = PQgetCopyData(conn->streamConn, &conn->recvBuf, 1);
  if (rawlen == 0)
  {

   *wait_fd = PQsocket(conn->streamConn);
   return 0;
  }
 }
 if (rawlen == -1)
 {
  PGresult *res;

  res = libpqrcv_PQgetResult(conn->streamConn);
  if (PQresultStatus(res) == PGRES_COMMAND_OK)
  {
   PQclear(res);


   res = libpqrcv_PQgetResult(conn->streamConn);
   if (res != ((void*)0))
   {
    PQclear(res);






    if (PQstatus(conn->streamConn) == CONNECTION_BAD)
     return -1;

    ereport(ERROR,
      (errmsg("unexpected result after CommandComplete: %s",
        PQerrorMessage(conn->streamConn))));
   }

   return -1;
  }
  else if (PQresultStatus(res) == PGRES_COPY_IN)
  {
   PQclear(res);
   return -1;
  }
  else
  {
   PQclear(res);
   ereport(ERROR,
     (errmsg("could not receive data from WAL stream: %s",
       pchomp(PQerrorMessage(conn->streamConn)))));
  }
 }
 if (rawlen < -1)
  ereport(ERROR,
    (errmsg("could not receive data from WAL stream: %s",
      pchomp(PQerrorMessage(conn->streamConn)))));


 *buffer = conn->recvBuf;
 return rawlen;
}
