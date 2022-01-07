
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int ps_ResultTupleSlot; } ;
struct TYPE_5__ {TYPE_3__ ps; } ;
typedef TYPE_1__ ProjectSetState ;


 int ExecClearTuple (int ) ;
 int ExecEndNode (int ) ;
 int ExecFreeExprContext (TYPE_3__*) ;
 int outerPlanState (TYPE_1__*) ;

void
ExecEndProjectSet(ProjectSetState *node)
{



 ExecFreeExprContext(&node->ps);




 ExecClearTuple(node->ps.ps_ResultTupleSlot);




 ExecEndNode(outerPlanState(node));
}
