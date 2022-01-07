
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGconn ;


 int executeStatement (int *,char*) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void
initVacuum(PGconn *con)
{
 fprintf(stderr, "vacuuming...\n");
 executeStatement(con, "vacuum analyze pgbench_branches");
 executeStatement(con, "vacuum analyze pgbench_tellers");
 executeStatement(con, "vacuum analyze pgbench_accounts");
 executeStatement(con, "vacuum analyze pgbench_history");
}
