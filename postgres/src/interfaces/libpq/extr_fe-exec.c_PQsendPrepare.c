
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int asyncStatus; scalar_t__ last_query; int queryclass; int errorMessage; int pversion; } ;
typedef TYPE_1__ PGconn ;
typedef int Oid ;


 int PGASYNC_BUSY ;
 int PGQUERY_PREPARE ;
 int PG_PROTOCOL_MAJOR (int ) ;
 int PQsendQueryStart (TYPE_1__*) ;
 int free (scalar_t__) ;
 int libpq_gettext (char*) ;
 scalar_t__ pqFlush (TYPE_1__*) ;
 scalar_t__ pqPutInt (int const,int,TYPE_1__*) ;
 scalar_t__ pqPutMsgEnd (TYPE_1__*) ;
 scalar_t__ pqPutMsgStart (char,int,TYPE_1__*) ;
 scalar_t__ pqPuts (char const*,TYPE_1__*) ;
 int printfPQExpBuffer (int *,int ) ;
 scalar_t__ strdup (char const*) ;

int
PQsendPrepare(PGconn *conn,
     const char *stmtName, const char *query,
     int nParams, const Oid *paramTypes)
{
 if (!PQsendQueryStart(conn))
  return 0;


 if (!stmtName)
 {
  printfPQExpBuffer(&conn->errorMessage,
        libpq_gettext("statement name is a null pointer\n"));
  return 0;
 }
 if (!query)
 {
  printfPQExpBuffer(&conn->errorMessage,
        libpq_gettext("command string is a null pointer\n"));
  return 0;
 }
 if (nParams < 0 || nParams > 65535)
 {
  printfPQExpBuffer(&conn->errorMessage,
        libpq_gettext("number of parameters must be between 0 and 65535\n"));
  return 0;
 }


 if (PG_PROTOCOL_MAJOR(conn->pversion) < 3)
 {
  printfPQExpBuffer(&conn->errorMessage,
        libpq_gettext("function requires at least protocol version 3.0\n"));
  return 0;
 }


 if (pqPutMsgStart('P', 0, conn) < 0 ||
  pqPuts(stmtName, conn) < 0 ||
  pqPuts(query, conn) < 0)
  goto sendFailed;

 if (nParams > 0 && paramTypes)
 {
  int i;

  if (pqPutInt(nParams, 2, conn) < 0)
   goto sendFailed;
  for (i = 0; i < nParams; i++)
  {
   if (pqPutInt(paramTypes[i], 4, conn) < 0)
    goto sendFailed;
  }
 }
 else
 {
  if (pqPutInt(0, 2, conn) < 0)
   goto sendFailed;
 }
 if (pqPutMsgEnd(conn) < 0)
  goto sendFailed;


 if (pqPutMsgStart('S', 0, conn) < 0 ||
  pqPutMsgEnd(conn) < 0)
  goto sendFailed;


 conn->queryclass = PGQUERY_PREPARE;



 if (conn->last_query)
  free(conn->last_query);
 conn->last_query = strdup(query);





 if (pqFlush(conn) < 0)
  goto sendFailed;


 conn->asyncStatus = PGASYNC_BUSY;
 return 1;

sendFailed:

 return 0;
}
