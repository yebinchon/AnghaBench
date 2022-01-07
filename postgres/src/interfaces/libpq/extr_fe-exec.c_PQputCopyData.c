
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ asyncStatus; int outBufSize; int outCount; int pversion; int errorMessage; } ;
typedef TYPE_1__ PGconn ;


 scalar_t__ PGASYNC_COPY_BOTH ;
 scalar_t__ PGASYNC_COPY_IN ;
 int PG_PROTOCOL_MAJOR (int ) ;
 int libpq_gettext (char*) ;
 int parseInput (TYPE_1__*) ;
 scalar_t__ pqCheckOutBufferSpace (int,TYPE_1__*) ;
 scalar_t__ pqFlush (TYPE_1__*) ;
 scalar_t__ pqIsnonblocking (TYPE_1__*) ;
 scalar_t__ pqPutMsgEnd (TYPE_1__*) ;
 scalar_t__ pqPutMsgStart (char,int,TYPE_1__*) ;
 scalar_t__ pqPutnchar (char const*,int,TYPE_1__*) ;
 int printfPQExpBuffer (int *,int ) ;

int
PQputCopyData(PGconn *conn, const char *buffer, int nbytes)
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
 parseInput(conn);

 if (nbytes > 0)
 {







  if ((conn->outBufSize - conn->outCount - 5) < nbytes)
  {
   if (pqFlush(conn) < 0)
    return -1;
   if (pqCheckOutBufferSpace(conn->outCount + 5 + (size_t) nbytes,
           conn))
    return pqIsnonblocking(conn) ? 0 : -1;
  }

  if (PG_PROTOCOL_MAJOR(conn->pversion) >= 3)
  {
   if (pqPutMsgStart('d', 0, conn) < 0 ||
    pqPutnchar(buffer, nbytes, conn) < 0 ||
    pqPutMsgEnd(conn) < 0)
    return -1;
  }
  else
  {
   if (pqPutMsgStart(0, 0, conn) < 0 ||
    pqPutnchar(buffer, nbytes, conn) < 0 ||
    pqPutMsgEnd(conn) < 0)
    return -1;
  }
 }
 return 1;
}
