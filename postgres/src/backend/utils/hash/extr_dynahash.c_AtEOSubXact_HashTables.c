
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WARNING ;
 int elog (int ,char*,int ) ;
 int num_seq_scans ;
 int* seq_scan_level ;
 int * seq_scan_tables ;

void
AtEOSubXact_HashTables(bool isCommit, int nestDepth)
{
 int i;






 for (i = num_seq_scans - 1; i >= 0; i--)
 {
  if (seq_scan_level[i] >= nestDepth)
  {
   if (isCommit)
    elog(WARNING, "leaked hash_seq_search scan for hash table %p",
      seq_scan_tables[i]);
   seq_scan_tables[i] = seq_scan_tables[num_seq_scans - 1];
   seq_scan_level[i] = seq_scan_level[num_seq_scans - 1];
   num_seq_scans--;
  }
 }
}
