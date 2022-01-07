
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int ps_ResultTupleSlot; } ;
struct TYPE_7__ {TYPE_5__ ps; } ;
struct TYPE_8__ {int mj_MarkedTupleSlot; TYPE_1__ js; } ;
typedef TYPE_2__ MergeJoinState ;


 int ExecClearTuple (int ) ;
 int ExecEndNode (int ) ;
 int ExecFreeExprContext (TYPE_5__*) ;
 int MJ1_printf (char*,char*) ;
 int innerPlanState (TYPE_2__*) ;
 int outerPlanState (TYPE_2__*) ;

void
ExecEndMergeJoin(MergeJoinState *node)
{
 MJ1_printf("ExecEndMergeJoin: %s\n",
      "ending node processing");




 ExecFreeExprContext(&node->js.ps);




 ExecClearTuple(node->js.ps.ps_ResultTupleSlot);
 ExecClearTuple(node->mj_MarkedTupleSlot);




 ExecEndNode(innerPlanState(node));
 ExecEndNode(outerPlanState(node));

 MJ1_printf("ExecEndMergeJoin: %s\n",
      "node processing ended");
}
