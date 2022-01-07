
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ ps_ResultTupleSlot; } ;
struct TYPE_8__ {scalar_t__ ss_currentScanDesc; scalar_t__ ss_ScanTupleSlot; TYPE_5__ ps; } ;
struct TYPE_9__ {TYPE_2__ ss; TYPE_1__* tsmroutine; } ;
struct TYPE_7__ {int (* EndSampleScan ) (TYPE_3__*) ;} ;
typedef TYPE_3__ SampleScanState ;


 int ExecClearTuple (scalar_t__) ;
 int ExecFreeExprContext (TYPE_5__*) ;
 int stub1 (TYPE_3__*) ;
 int table_endscan (scalar_t__) ;

void
ExecEndSampleScan(SampleScanState *node)
{



 if (node->tsmroutine->EndSampleScan)
  node->tsmroutine->EndSampleScan(node);




 ExecFreeExprContext(&node->ss.ps);




 if (node->ss.ps.ps_ResultTupleSlot)
  ExecClearTuple(node->ss.ps.ps_ResultTupleSlot);
 ExecClearTuple(node->ss.ss_ScanTupleSlot);




 if (node->ss.ss_currentScanDesc)
  table_endscan(node->ss.ss_currentScanDesc);
}
