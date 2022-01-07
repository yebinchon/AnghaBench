
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int tabname; } ;
typedef TYPE_1__ HTAB ;


 int ERROR ;
 int GetCurrentTransactionNestLevel () ;
 size_t MAX_SEQ_SCANS ;
 int elog (int ,char*,int ) ;
 size_t num_seq_scans ;
 int * seq_scan_level ;
 TYPE_1__** seq_scan_tables ;

__attribute__((used)) static void
register_seq_scan(HTAB *hashp)
{
 if (num_seq_scans >= MAX_SEQ_SCANS)
  elog(ERROR, "too many active hash_seq_search scans, cannot start one on \"%s\"",
    hashp->tabname);
 seq_scan_tables[num_seq_scans] = hashp;
 seq_scan_level[num_seq_scans] = GetCurrentTransactionNestLevel();
 num_seq_scans++;
}
