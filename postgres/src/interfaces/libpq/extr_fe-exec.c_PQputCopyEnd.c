
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ asyncStatus; scalar_t__ queryclass; int errorMessage; int pversion; } ;
typedef TYPE_1__ PGconn ;


 scalar_t__ PGASYNC_BUSY ;
 scalar_t__ PGASYNC_COPY_BOTH ;
 scalar_t__ PGASYNC_COPY_IN ;
 scalar_t__ PGASYNC_COPY_OUT ;
 scalar_t__ PGQUERY_SIMPLE ;
 int PG_PROTOCOL_MAJOR (int ) ;
 int libpq_gettext (char*) ;
 scalar_t__ pqFlush (TYPE_1__*) ;
 scalar_t__ pqPutMsgEnd (TYPE_1__*) ;
 scalar_t__ pqPutMsgStart (char,int,TYPE_1__*) ;
 scalar_t__ pqPutnchar (char*,int,TYPE_1__*) ;
 scalar_t__ pqPuts (char const*,TYPE_1__*) ;
 int printfPQExpBuffer (int *,int ) ;
 int resetPQExpBuffer (int *) ;

int
PQputCopyEnd(PGconn *conn, const char *errormsg)
{
 if (!conn)
  return -1;
 if (conn->asyncStatus != PGASYNC_COPY_IN &&
  conn->asyncStatus != PGASYNC_COPY_BOTH)
 {
  printfPQExpBuffer(&conn->errorMessage,
        libpq_gettext("no COPY in progress\n"));
  return -1;
 }





 if (PG_PROTOCOL_MAJOR(conn->pversion) >= 3)
 {
  if (errormsg)
  {

   if (pqPutMsgStart('f', 0, conn) < 0 ||
    pqPuts(errormsg, conn) < 0 ||
    pqPutMsgEnd(conn) < 0)
    return -1;
  }
  else
  {

   if (pqPutMsgStart('c', 0, conn) < 0 ||
    pqPutMsgEnd(conn) < 0)
    return -1;
  }





  if (conn->queryclass != PGQUERY_SIMPLE)
  {
   if (pqPutMsgStart('S', 0, conn) < 0 ||
    pqPutMsgEnd(conn) < 0)
    return -1;
  }
 }
 else
 {
  if (errormsg)
  {

   printfPQExpBuffer(&conn->errorMessage,
         libpq_gettext("function requires at least protocol version 3.0\n"));
   return -1;
  }
  else
  {

   if (pqPutMsgStart(0, 0, conn) < 0 ||
    pqPutnchar("\\.\n", 3, conn) < 0 ||
    pqPutMsgEnd(conn) < 0)
    return -1;
  }
 }


 if (conn->asyncStatus == PGASYNC_COPY_BOTH)
  conn->asyncStatus = PGASYNC_COPY_OUT;
 else
  conn->asyncStatus = PGASYNC_BUSY;
 resetPQExpBuffer(&conn->errorMessage);


 if (pqFlush(conn) < 0)
  return -1;

 return 1;
}
