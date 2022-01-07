
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGresult ;
typedef int PGconn ;


 int * PQexecFinish (int *) ;
 int PQexecStart (int *) ;
 int PQsendDescribe (int *,char,char const*) ;

PGresult *
PQdescribePortal(PGconn *conn, const char *portal)
{
 if (!PQexecStart(conn))
  return ((void*)0);
 if (!PQsendDescribe(conn, 'P', portal))
  return ((void*)0);
 return PQexecFinish(conn);
}
