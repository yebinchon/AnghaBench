
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGconn ;


 int executeStatement (int *,char*) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void
initDropTables(PGconn *con)
{
 fprintf(stderr, "dropping old tables...\n");





 executeStatement(con, "drop table if exists "
      "pgbench_accounts, "
      "pgbench_branches, "
      "pgbench_history, "
      "pgbench_tellers");
}
