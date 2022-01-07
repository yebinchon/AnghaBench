
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGresult ;
typedef int PGconn ;


 int * PQexecFinish (int *) ;
 int PQexecStart (int *) ;
 int PQsendQueryPrepared (int *,char const*,int,char const* const*,int const*,int const*,int) ;

PGresult *
PQexecPrepared(PGconn *conn,
      const char *stmtName,
      int nParams,
      const char *const *paramValues,
      const int *paramLengths,
      const int *paramFormats,
      int resultFormat)
{
 if (!PQexecStart(conn))
  return ((void*)0);
 if (!PQsendQueryPrepared(conn, stmtName,
        nParams, paramValues, paramLengths,
        paramFormats, resultFormat))
  return ((void*)0);
 return PQexecFinish(conn);
}
