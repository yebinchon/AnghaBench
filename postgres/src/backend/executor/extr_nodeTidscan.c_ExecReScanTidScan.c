
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ ss_currentScanDesc; } ;
struct TYPE_4__ {int tss_TidPtr; TYPE_2__ ss; scalar_t__ tss_NumTids; int * tss_TidList; } ;
typedef TYPE_1__ TidScanState ;


 int ExecScanReScan (TYPE_2__*) ;
 int pfree (int *) ;
 int table_rescan (scalar_t__,int *) ;

void
ExecReScanTidScan(TidScanState *node)
{
 if (node->tss_TidList)
  pfree(node->tss_TidList);
 node->tss_TidList = ((void*)0);
 node->tss_NumTids = 0;
 node->tss_TidPtr = -1;


 if (node->ss.ss_currentScanDesc)
  table_rescan(node->ss.ss_currentScanDesc, ((void*)0));

 ExecScanReScan(&node->ss);
}
