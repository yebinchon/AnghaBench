
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int * TableScanDesc ;
struct TYPE_4__ {int * ss_currentScanDesc; } ;
struct TYPE_5__ {TYPE_1__ ss; } ;
typedef TYPE_2__ SeqScanState ;
typedef int ScanState ;


 int ExecScanReScan (int *) ;
 int table_rescan (int *,int *) ;

void
ExecReScanSeqScan(SeqScanState *node)
{
 TableScanDesc scan;

 scan = node->ss.ss_currentScanDesc;

 if (scan != ((void*)0))
  table_rescan(scan,
      ((void*)0));

 ExecScanReScan((ScanState *) node);
}
