
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int asyncStatus; int * last_query; int queryclass; int errorMessage; int pversion; } ;
typedef TYPE_1__ PGconn ;
typedef int Oid ;


 int PGASYNC_BUSY ;
 int PGQUERY_EXTENDED ;
 int PG_PROTOCOL_MAJOR (int ) ;
 int free (int *) ;
 int libpq_gettext (char*) ;
 scalar_t__ pqFlush (TYPE_1__*) ;
 scalar_t__ pqPutInt (int const,int,TYPE_1__*) ;
 scalar_t__ pqPutMsgEnd (TYPE_1__*) ;
 scalar_t__ pqPutMsgStart (char,int,TYPE_1__*) ;
 scalar_t__ pqPutc (char,TYPE_1__*) ;
 scalar_t__ pqPutnchar (char const* const,int,TYPE_1__*) ;
 scalar_t__ pqPuts (char const*,TYPE_1__*) ;
 int printfPQExpBuffer (int *,int ) ;
 int * strdup (char const*) ;
 int strlen (char const* const) ;

__attribute__((used)) static int
PQsendQueryGuts(PGconn *conn,
    const char *command,
    const char *stmtName,
    int nParams,
    const Oid *paramTypes,
    const char *const *paramValues,
    const int *paramLengths,
    const int *paramFormats,
    int resultFormat)
{
 int i;


 if (PG_PROTOCOL_MAJOR(conn->pversion) < 3)
 {
  printfPQExpBuffer(&conn->errorMessage,
        libpq_gettext("function requires at least protocol version 3.0\n"));
  return 0;
 }






 if (command)
 {

  if (pqPutMsgStart('P', 0, conn) < 0 ||
   pqPuts(stmtName, conn) < 0 ||
   pqPuts(command, conn) < 0)
   goto sendFailed;
  if (nParams > 0 && paramTypes)
  {
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
 }


 if (pqPutMsgStart('B', 0, conn) < 0 ||
  pqPuts("", conn) < 0 ||
  pqPuts(stmtName, conn) < 0)
  goto sendFailed;


 if (nParams > 0 && paramFormats)
 {
  if (pqPutInt(nParams, 2, conn) < 0)
   goto sendFailed;
  for (i = 0; i < nParams; i++)
  {
   if (pqPutInt(paramFormats[i], 2, conn) < 0)
    goto sendFailed;
  }
 }
 else
 {
  if (pqPutInt(0, 2, conn) < 0)
   goto sendFailed;
 }

 if (pqPutInt(nParams, 2, conn) < 0)
  goto sendFailed;


 for (i = 0; i < nParams; i++)
 {
  if (paramValues && paramValues[i])
  {
   int nbytes;

   if (paramFormats && paramFormats[i] != 0)
   {

    if (paramLengths)
     nbytes = paramLengths[i];
    else
    {
     printfPQExpBuffer(&conn->errorMessage,
           libpq_gettext("length must be given for binary parameter\n"));
     goto sendFailed;
    }
   }
   else
   {

    nbytes = strlen(paramValues[i]);
   }
   if (pqPutInt(nbytes, 4, conn) < 0 ||
    pqPutnchar(paramValues[i], nbytes, conn) < 0)
    goto sendFailed;
  }
  else
  {

   if (pqPutInt(-1, 4, conn) < 0)
    goto sendFailed;
  }
 }
 if (pqPutInt(1, 2, conn) < 0 ||
  pqPutInt(resultFormat, 2, conn))
  goto sendFailed;
 if (pqPutMsgEnd(conn) < 0)
  goto sendFailed;


 if (pqPutMsgStart('D', 0, conn) < 0 ||
  pqPutc('P', conn) < 0 ||
  pqPuts("", conn) < 0 ||
  pqPutMsgEnd(conn) < 0)
  goto sendFailed;


 if (pqPutMsgStart('E', 0, conn) < 0 ||
  pqPuts("", conn) < 0 ||
  pqPutInt(0, 4, conn) < 0 ||
  pqPutMsgEnd(conn) < 0)
  goto sendFailed;


 if (pqPutMsgStart('S', 0, conn) < 0 ||
  pqPutMsgEnd(conn) < 0)
  goto sendFailed;


 conn->queryclass = PGQUERY_EXTENDED;



 if (conn->last_query)
  free(conn->last_query);
 if (command)
  conn->last_query = strdup(command);
 else
  conn->last_query = ((void*)0);





 if (pqFlush(conn) < 0)
  goto sendFailed;


 conn->asyncStatus = PGASYNC_BUSY;
 return 1;

sendFailed:

 return 0;
}
