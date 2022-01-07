
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGresult ;


 scalar_t__ PGRES_COMMAND_OK ;
 int PQclear (int *) ;
 int * PQexec (int ,char const*) ;
 int PQresultErrorMessage (int *) ;
 scalar_t__ PQresultStatus (int *) ;
 int conn ;
 int pg_fatal (char*,char const*,int ) ;

__attribute__((used)) static void
run_simple_command(const char *sql)
{
 PGresult *res;

 res = PQexec(conn, sql);

 if (PQresultStatus(res) != PGRES_COMMAND_OK)
  pg_fatal("error running query (%s) in source server: %s",
     sql, PQresultErrorMessage(res));

 PQclear(res);
}
