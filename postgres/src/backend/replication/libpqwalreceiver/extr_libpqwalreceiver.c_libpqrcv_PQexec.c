
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGresult ;
typedef int PGconn ;


 scalar_t__ CONNECTION_BAD ;
 scalar_t__ PGRES_COPY_BOTH ;
 scalar_t__ PGRES_COPY_IN ;
 scalar_t__ PGRES_COPY_OUT ;
 int PQclear (int *) ;
 scalar_t__ PQresultStatus (int *) ;
 int PQsendQuery (int *,char const*) ;
 scalar_t__ PQstatus (int *) ;
 int * libpqrcv_PQgetResult (int *) ;

__attribute__((used)) static PGresult *
libpqrcv_PQexec(PGconn *streamConn, const char *query)
{
 PGresult *lastResult = ((void*)0);
 if (!PQsendQuery(streamConn, query))
  return ((void*)0);

 for (;;)
 {

  PGresult *result;

  result = libpqrcv_PQgetResult(streamConn);
  if (result == ((void*)0))
   break;





  PQclear(lastResult);
  lastResult = result;

  if (PQresultStatus(lastResult) == PGRES_COPY_IN ||
   PQresultStatus(lastResult) == PGRES_COPY_OUT ||
   PQresultStatus(lastResult) == PGRES_COPY_BOTH ||
   PQstatus(streamConn) == CONNECTION_BAD)
   break;
 }

 return lastResult;
}
