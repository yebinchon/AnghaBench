
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ ps_ResultTupleSlot; int state; } ;
struct TYPE_10__ {int mt_nplans; int * mt_plans; int mt_epqstate; TYPE_5__ ps; scalar_t__ mt_root_tuple_slot; scalar_t__ mt_partition_tuple_routing; TYPE_2__* resultRelInfo; } ;
struct TYPE_9__ {TYPE_1__* ri_FdwRoutine; int ri_usesFdwDirectModify; } ;
struct TYPE_8__ {int (* EndForeignModify ) (int ,TYPE_2__*) ;} ;
typedef TYPE_2__ ResultRelInfo ;
typedef TYPE_3__ ModifyTableState ;


 int EvalPlanQualEnd (int *) ;
 int ExecCleanupTupleRouting (TYPE_3__*,scalar_t__) ;
 int ExecClearTuple (scalar_t__) ;
 int ExecDropSingleTupleTableSlot (scalar_t__) ;
 int ExecEndNode (int ) ;
 int ExecFreeExprContext (TYPE_5__*) ;
 int stub1 (int ,TYPE_2__*) ;

void
ExecEndModifyTable(ModifyTableState *node)
{
 int i;




 for (i = 0; i < node->mt_nplans; i++)
 {
  ResultRelInfo *resultRelInfo = node->resultRelInfo + i;

  if (!resultRelInfo->ri_usesFdwDirectModify &&
   resultRelInfo->ri_FdwRoutine != ((void*)0) &&
   resultRelInfo->ri_FdwRoutine->EndForeignModify != ((void*)0))
   resultRelInfo->ri_FdwRoutine->EndForeignModify(node->ps.state,
                 resultRelInfo);
 }





 if (node->mt_partition_tuple_routing)
 {
  ExecCleanupTupleRouting(node, node->mt_partition_tuple_routing);

  if (node->mt_root_tuple_slot)
   ExecDropSingleTupleTableSlot(node->mt_root_tuple_slot);
 }




 ExecFreeExprContext(&node->ps);




 if (node->ps.ps_ResultTupleSlot)
  ExecClearTuple(node->ps.ps_ResultTupleSlot);




 EvalPlanQualEnd(&node->mt_epqstate);




 for (i = 0; i < node->mt_nplans; i++)
  ExecEndNode(node->mt_plans[i]);
}
