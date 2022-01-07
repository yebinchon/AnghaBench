
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int tabname; } ;
typedef TYPE_1__ HTAB ;


 int ERROR ;
 int elog (int ,char*,int ) ;
 int num_seq_scans ;
 int * seq_scan_level ;
 TYPE_1__** seq_scan_tables ;

__attribute__((used)) static void
deregister_seq_scan(HTAB *hashp)
{
 int i;


 for (i = num_seq_scans - 1; i >= 0; i--)
 {
  if (seq_scan_tables[i] == hashp)
  {
   seq_scan_tables[i] = seq_scan_tables[num_seq_scans - 1];
   seq_scan_level[i] = seq_scan_level[num_seq_scans - 1];
   num_seq_scans--;
   return;
  }
 }
 elog(ERROR, "no hash_seq_search scan for hash table \"%s\"",
   hashp->tabname);
}
