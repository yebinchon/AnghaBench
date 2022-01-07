
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int asyncStatus; int * last_query; int queryclass; int errorMessage; int pversion; } ;
typedef TYPE_1__ PGconn ;


 int PGASYNC_BUSY ;
 int PGQUERY_DESCRIBE ;
 int PG_PROTOCOL_MAJOR (int ) ;
 int PQsendQueryStart (TYPE_1__*) ;
 int free (int *) ;
 int libpq_gettext (char*) ;
 scalar_t__ pqFlush (TYPE_1__*) ;
 scalar_t__ pqPutMsgEnd (TYPE_1__*) ;
 scalar_t__ pqPutMsgStart (char,int,TYPE_1__*) ;
 scalar_t__ pqPutc (char,TYPE_1__*) ;
 scalar_t__ pqPuts (char const*,TYPE_1__*) ;
 int printfPQExpBuffer (int *,int ) ;

__attribute__((used)) static int
PQsendDescribe(PGconn *conn, char desc_type, const char *desc_target)
{

 if (!desc_target)
  desc_target = "";

 if (!PQsendQueryStart(conn))
  return 0;


 if (PG_PROTOCOL_MAJOR(conn->pversion) < 3)
 {
  printfPQExpBuffer(&conn->errorMessage,
        libpq_gettext("function requires at least protocol version 3.0\n"));
  return 0;
 }


 if (pqPutMsgStart('D', 0, conn) < 0 ||
  pqPutc(desc_type, conn) < 0 ||
  pqPuts(desc_target, conn) < 0 ||
  pqPutMsgEnd(conn) < 0)
  goto sendFailed;


 if (pqPutMsgStart('S', 0, conn) < 0 ||
  pqPutMsgEnd(conn) < 0)
  goto sendFailed;


 conn->queryclass = PGQUERY_DESCRIBE;


 if (conn->last_query)
 {
  free(conn->last_query);
  conn->last_query = ((void*)0);
 }





 if (pqFlush(conn) < 0)
  goto sendFailed;


 conn->asyncStatus = PGASYNC_BUSY;
 return 1;

sendFailed:

 return 0;
}
