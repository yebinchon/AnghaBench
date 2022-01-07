
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ status; int errorMessage; } ;
struct TYPE_9__ {scalar_t__ resultStatus; int errMsg; } ;
typedef TYPE_1__ PGresult ;
typedef TYPE_2__ PGconn ;


 scalar_t__ CONNECTION_BAD ;
 scalar_t__ PGRES_COPY_BOTH ;
 scalar_t__ PGRES_COPY_IN ;
 scalar_t__ PGRES_COPY_OUT ;
 scalar_t__ PGRES_FATAL_ERROR ;
 int PQclear (TYPE_1__*) ;
 TYPE_1__* PQgetResult (TYPE_2__*) ;
 int appendPQExpBufferStr (int *,int ) ;
 int pqCatenateResultError (TYPE_1__*,int ) ;
 int resetPQExpBuffer (int *) ;

__attribute__((used)) static PGresult *
PQexecFinish(PGconn *conn)
{
 PGresult *result;
 PGresult *lastResult;
 lastResult = ((void*)0);
 while ((result = PQgetResult(conn)) != ((void*)0))
 {
  if (lastResult)
  {
   if (lastResult->resultStatus == PGRES_FATAL_ERROR &&
    result->resultStatus == PGRES_FATAL_ERROR)
   {
    pqCatenateResultError(lastResult, result->errMsg);
    PQclear(result);
    result = lastResult;




    resetPQExpBuffer(&conn->errorMessage);
    appendPQExpBufferStr(&conn->errorMessage, result->errMsg);
   }
   else
    PQclear(lastResult);
  }
  lastResult = result;
  if (result->resultStatus == PGRES_COPY_IN ||
   result->resultStatus == PGRES_COPY_OUT ||
   result->resultStatus == PGRES_COPY_BOTH ||
   conn->status == CONNECTION_BAD)
   break;
 }

 return lastResult;
}
