
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGresult ;
typedef int PGconn ;


 scalar_t__ PGRES_COMMAND_OK ;
 int PQclear (int *) ;
 char* PQerrorMessage (int *) ;
 int * PQexec (int *,char const*) ;
 scalar_t__ PQresultStatus (int *) ;
 int fprintf (int ,char*,...) ;
 int stderr ;

__attribute__((used)) static void
tryExecuteStatement(PGconn *con, const char *sql)
{
 PGresult *res;

 res = PQexec(con, sql);
 if (PQresultStatus(res) != PGRES_COMMAND_OK)
 {
  fprintf(stderr, "%s", PQerrorMessage(con));
  fprintf(stderr, "(ignoring this error and continuing anyway)\n");
 }
 PQclear(res);
}
