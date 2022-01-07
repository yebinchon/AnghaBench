
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WARNING ;
 int elog (int ,char*,int ) ;
 int num_seq_scans ;
 int * seq_scan_tables ;

void
AtEOXact_HashTables(bool isCommit)
{
 if (isCommit)
 {
  int i;

  for (i = 0; i < num_seq_scans; i++)
  {
   elog(WARNING, "leaked hash_seq_search scan for hash table %p",
     seq_scan_tables[i]);
  }
 }
 num_seq_scans = 0;
}
