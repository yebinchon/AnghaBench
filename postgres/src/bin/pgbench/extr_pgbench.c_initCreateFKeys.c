
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGconn ;


 int executeStatement (int *,char const* const) ;
 int fprintf (int ,char*) ;
 int lengthof (char const* const*) ;
 int stderr ;

__attribute__((used)) static void
initCreateFKeys(PGconn *con)
{
 static const char *const DDLKEYs[] = {
  "alter table pgbench_tellers add constraint pgbench_tellers_bid_fkey foreign key (bid) references pgbench_branches",
  "alter table pgbench_accounts add constraint pgbench_accounts_bid_fkey foreign key (bid) references pgbench_branches",
  "alter table pgbench_history add constraint pgbench_history_bid_fkey foreign key (bid) references pgbench_branches",
  "alter table pgbench_history add constraint pgbench_history_tid_fkey foreign key (tid) references pgbench_tellers",
  "alter table pgbench_history add constraint pgbench_history_aid_fkey foreign key (aid) references pgbench_accounts"
 };
 int i;

 fprintf(stderr, "creating foreign keys...\n");
 for (i = 0; i < lengthof(DDLKEYs); i++)
 {
  executeStatement(con, DDLKEYs[i]);
 }
}
