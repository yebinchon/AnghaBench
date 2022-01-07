
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGconn ;


 int executeStatement (int *,char*) ;

__attribute__((used)) static void
initTruncateTables(PGconn *con)
{
 executeStatement(con, "truncate table "
      "pgbench_accounts, "
      "pgbench_branches, "
      "pgbench_history, "
      "pgbench_tellers");
}
