
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int ps_ResultTupleSlot; } ;
struct TYPE_7__ {TYPE_5__ ps; } ;
struct TYPE_8__ {TYPE_1__ js; } ;
typedef TYPE_2__ NestLoopState ;


 int ExecClearTuple (int ) ;
 int ExecEndNode (int ) ;
 int ExecFreeExprContext (TYPE_5__*) ;
 int NL1_printf (char*,char*) ;
 int innerPlanState (TYPE_2__*) ;
 int outerPlanState (TYPE_2__*) ;

void
ExecEndNestLoop(NestLoopState *node)
{
 NL1_printf("ExecEndNestLoop: %s\n",
      "ending node processing");




 ExecFreeExprContext(&node->js.ps);




 ExecClearTuple(node->js.ps.ps_ResultTupleSlot);




 ExecEndNode(outerPlanState(node));
 ExecEndNode(innerPlanState(node));

 NL1_printf("ExecEndNestLoop: %s\n",
      "node processing ended");
}
