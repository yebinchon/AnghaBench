
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int TableScanDesc ;
struct TYPE_8__ {scalar_t__ ps_ResultTupleSlot; } ;
struct TYPE_6__ {scalar_t__ ss_ScanTupleSlot; TYPE_4__ ps; int ss_currentScanDesc; } ;
struct TYPE_7__ {scalar_t__ vmbuffer; scalar_t__ pvmbuffer; scalar_t__ shared_prefetch_iterator; scalar_t__ shared_tbmiterator; scalar_t__ tbm; scalar_t__ prefetch_iterator; scalar_t__ tbmiterator; TYPE_1__ ss; } ;
typedef TYPE_2__ BitmapHeapScanState ;


 int ExecClearTuple (scalar_t__) ;
 int ExecEndNode (int ) ;
 int ExecFreeExprContext (TYPE_4__*) ;
 scalar_t__ InvalidBuffer ;
 int ReleaseBuffer (scalar_t__) ;
 int outerPlanState (TYPE_2__*) ;
 int table_endscan (int ) ;
 int tbm_end_iterate (scalar_t__) ;
 int tbm_end_shared_iterate (scalar_t__) ;
 int tbm_free (scalar_t__) ;

void
ExecEndBitmapHeapScan(BitmapHeapScanState *node)
{
 TableScanDesc scanDesc;




 scanDesc = node->ss.ss_currentScanDesc;




 ExecFreeExprContext(&node->ss.ps);




 if (node->ss.ps.ps_ResultTupleSlot)
  ExecClearTuple(node->ss.ps.ps_ResultTupleSlot);
 ExecClearTuple(node->ss.ss_ScanTupleSlot);




 ExecEndNode(outerPlanState(node));




 if (node->tbmiterator)
  tbm_end_iterate(node->tbmiterator);
 if (node->prefetch_iterator)
  tbm_end_iterate(node->prefetch_iterator);
 if (node->tbm)
  tbm_free(node->tbm);
 if (node->shared_tbmiterator)
  tbm_end_shared_iterate(node->shared_tbmiterator);
 if (node->shared_prefetch_iterator)
  tbm_end_shared_iterate(node->shared_prefetch_iterator);
 if (node->vmbuffer != InvalidBuffer)
  ReleaseBuffer(node->vmbuffer);
 if (node->pvmbuffer != InvalidBuffer)
  ReleaseBuffer(node->pvmbuffer);




 table_endscan(scanDesc);
}
