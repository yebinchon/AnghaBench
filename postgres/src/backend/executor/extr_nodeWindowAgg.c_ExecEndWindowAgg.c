
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int ps_ExprContext; } ;
struct TYPE_8__ {TYPE_6__ ps; scalar_t__ ss_ScanTupleSlot; } ;
struct TYPE_9__ {int numaggs; scalar_t__ aggcontext; scalar_t__ partcontext; TYPE_4__* peragg; TYPE_4__* perfunc; TYPE_1__ ss; int tmpcontext; scalar_t__ frametail_slot; scalar_t__ framehead_slot; scalar_t__ temp_slot_2; scalar_t__ temp_slot_1; scalar_t__ agg_row_slot; scalar_t__ first_part_slot; } ;
typedef TYPE_2__ WindowAggState ;
struct TYPE_10__ {scalar_t__ aggcontext; } ;
typedef int PlanState ;


 int ExecClearTuple (scalar_t__) ;
 int ExecEndNode (int *) ;
 int ExecFreeExprContext (TYPE_6__*) ;
 int MemoryContextDelete (scalar_t__) ;
 int * outerPlanState (TYPE_2__*) ;
 int pfree (TYPE_4__*) ;
 int release_partition (TYPE_2__*) ;

void
ExecEndWindowAgg(WindowAggState *node)
{
 PlanState *outerPlan;
 int i;

 release_partition(node);

 ExecClearTuple(node->ss.ss_ScanTupleSlot);
 ExecClearTuple(node->first_part_slot);
 ExecClearTuple(node->agg_row_slot);
 ExecClearTuple(node->temp_slot_1);
 ExecClearTuple(node->temp_slot_2);
 if (node->framehead_slot)
  ExecClearTuple(node->framehead_slot);
 if (node->frametail_slot)
  ExecClearTuple(node->frametail_slot);




 ExecFreeExprContext(&node->ss.ps);
 node->ss.ps.ps_ExprContext = node->tmpcontext;
 ExecFreeExprContext(&node->ss.ps);

 for (i = 0; i < node->numaggs; i++)
 {
  if (node->peragg[i].aggcontext != node->aggcontext)
   MemoryContextDelete(node->peragg[i].aggcontext);
 }
 MemoryContextDelete(node->partcontext);
 MemoryContextDelete(node->aggcontext);

 pfree(node->perfunc);
 pfree(node->peragg);

 outerPlan = outerPlanState(node);
 ExecEndNode(outerPlan);
}
