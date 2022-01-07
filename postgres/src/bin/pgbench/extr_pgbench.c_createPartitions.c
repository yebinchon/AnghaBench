
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int query ;
typedef int int64 ;
typedef int ff ;
typedef int PGconn ;


 int Assert (int) ;
 char* INT64_FORMAT ;
 scalar_t__ PART_HASH ;
 scalar_t__ PART_RANGE ;
 int append_fillfactor (char*,int) ;
 int executeStatement (int *,char*) ;
 int fprintf (int ,char*,int) ;
 int naccounts ;
 scalar_t__ partition_method ;
 int partitions ;
 scalar_t__ scale ;
 int snprintf (char*,int,char*,char*,int,...) ;
 int sprintf (char*,char*,...) ;
 int stderr ;
 scalar_t__ unlogged_tables ;

__attribute__((used)) static void
createPartitions(PGconn *con)
{
 char ff[64];

 ff[0] = '\0';





 append_fillfactor(ff, sizeof(ff));


 Assert(partitions > 0);

 fprintf(stderr, "creating %d partitions...\n", partitions);

 for (int p = 1; p <= partitions; p++)
 {
  char query[256];

  if (partition_method == PART_RANGE)
  {
   int64 part_size = (naccounts * (int64) scale + partitions - 1) / partitions;
   char minvalue[32],
      maxvalue[32];







   if (p == 1)
    sprintf(minvalue, "minvalue");
   else
    sprintf(minvalue, INT64_FORMAT, (p - 1) * part_size + 1);

   if (p < partitions)
    sprintf(maxvalue, INT64_FORMAT, p * part_size + 1);
   else
    sprintf(maxvalue, "maxvalue");

   snprintf(query, sizeof(query),
      "create%s table pgbench_accounts_%d\n"
      "  partition of pgbench_accounts\n"
      "  for values from (%s) to (%s)%s\n",
      unlogged_tables ? " unlogged" : "", p,
      minvalue, maxvalue, ff);
  }
  else if (partition_method == PART_HASH)
   snprintf(query, sizeof(query),
      "create%s table pgbench_accounts_%d\n"
      "  partition of pgbench_accounts\n"
      "  for values with (modulus %d, remainder %d)%s\n",
      unlogged_tables ? " unlogged" : "", p,
      partitions, p - 1, ff);
  else
   Assert(0);

  executeStatement(con, query);
 }
}
