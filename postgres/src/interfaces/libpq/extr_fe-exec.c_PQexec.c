
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGresult ;
typedef int PGconn ;


 int * PQexecFinish (int *) ;
 int PQexecStart (int *) ;
 int PQsendQuery (int *,char const*) ;

PGresult *
PQexec(PGconn *conn, const char *query)
{
 if (!PQexecStart(conn))
  return ((void*)0);
 if (!PQsendQuery(conn, query))
  return ((void*)0);
 return PQexecFinish(conn);
}
