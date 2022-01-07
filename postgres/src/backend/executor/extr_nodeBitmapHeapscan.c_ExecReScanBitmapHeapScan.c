
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int ss_currentScanDesc; } ;
struct TYPE_9__ {scalar_t__ vmbuffer; scalar_t__ pvmbuffer; int initialized; TYPE_5__ ss; int * shared_prefetch_iterator; int * shared_tbmiterator; int * prefetch_iterator; int * tbmres; int * tbmiterator; int * tbm; } ;
struct TYPE_8__ {int * chgParam; } ;
typedef TYPE_1__ PlanState ;
typedef TYPE_2__ BitmapHeapScanState ;


 int ExecReScan (TYPE_1__*) ;
 int ExecScanReScan (TYPE_5__*) ;
 scalar_t__ InvalidBuffer ;
 int ReleaseBuffer (scalar_t__) ;
 TYPE_1__* outerPlanState (TYPE_2__*) ;
 int table_rescan (int ,int *) ;
 int tbm_end_iterate (int *) ;
 int tbm_end_shared_iterate (int *) ;
 int tbm_free (int *) ;

void
ExecReScanBitmapHeapScan(BitmapHeapScanState *node)
{
 PlanState *outerPlan = outerPlanState(node);


 table_rescan(node->ss.ss_currentScanDesc, ((void*)0));


 if (node->tbmiterator)
  tbm_end_iterate(node->tbmiterator);
 if (node->prefetch_iterator)
  tbm_end_iterate(node->prefetch_iterator);
 if (node->shared_tbmiterator)
  tbm_end_shared_iterate(node->shared_tbmiterator);
 if (node->shared_prefetch_iterator)
  tbm_end_shared_iterate(node->shared_prefetch_iterator);
 if (node->tbm)
  tbm_free(node->tbm);
 if (node->vmbuffer != InvalidBuffer)
  ReleaseBuffer(node->vmbuffer);
 if (node->pvmbuffer != InvalidBuffer)
  ReleaseBuffer(node->pvmbuffer);
 node->tbm = ((void*)0);
 node->tbmiterator = ((void*)0);
 node->tbmres = ((void*)0);
 node->prefetch_iterator = ((void*)0);
 node->initialized = 0;
 node->shared_tbmiterator = ((void*)0);
 node->shared_prefetch_iterator = ((void*)0);
 node->vmbuffer = InvalidBuffer;
 node->pvmbuffer = InvalidBuffer;

 ExecScanReScan(&node->ss);





 if (outerPlan->chgParam == ((void*)0))
  ExecReScan(outerPlan);
}
