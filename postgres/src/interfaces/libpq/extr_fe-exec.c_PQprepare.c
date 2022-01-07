
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGresult ;
typedef int PGconn ;
typedef int Oid ;


 int * PQexecFinish (int *) ;
 int PQexecStart (int *) ;
 int PQsendPrepare (int *,char const*,char const*,int,int const*) ;

PGresult *
PQprepare(PGconn *conn,
    const char *stmtName, const char *query,
    int nParams, const Oid *paramTypes)
{
 if (!PQexecStart(conn))
  return ((void*)0);
 if (!PQsendPrepare(conn, stmtName, query, nParams, paramTypes))
  return ((void*)0);
 return PQexecFinish(conn);
}
