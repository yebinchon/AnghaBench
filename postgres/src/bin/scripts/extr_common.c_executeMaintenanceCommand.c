
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGresult ;
typedef int PGconn ;


 scalar_t__ PGRES_COMMAND_OK ;
 int PQclear (int *) ;
 int * PQexec (int *,char const*) ;
 scalar_t__ PQresultStatus (int *) ;
 int ResetCancelConn () ;
 int SetCancelConn (int *) ;
 int printf (char*,char const*) ;

bool
executeMaintenanceCommand(PGconn *conn, const char *query, bool echo)
{
 PGresult *res;
 bool r;

 if (echo)
  printf("%s\n", query);

 SetCancelConn(conn);
 res = PQexec(conn, query);
 ResetCancelConn();

 r = (res && PQresultStatus(res) == PGRES_COMMAND_OK);

 if (res)
  PQclear(res);

 return r;
}
