
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGresult ;
typedef int PGconn ;
typedef int Oid ;


 int * PQexecFinish (int *) ;
 int PQexecStart (int *) ;
 int PQsendQueryParams (int *,char const*,int,int const*,char const* const*,int const*,int const*,int) ;

PGresult *
PQexecParams(PGconn *conn,
    const char *command,
    int nParams,
    const Oid *paramTypes,
    const char *const *paramValues,
    const int *paramLengths,
    const int *paramFormats,
    int resultFormat)
{
 if (!PQexecStart(conn))
  return ((void*)0);
 if (!PQsendQueryParams(conn, command,
         nParams, paramTypes, paramValues, paramLengths,
         paramFormats, resultFormat))
  return ((void*)0);
 return PQexecFinish(conn);
}
