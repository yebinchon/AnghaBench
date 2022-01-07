
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ ps_ResultTupleSlot; } ;
struct TYPE_6__ {TYPE_4__ ps; } ;
typedef TYPE_1__ GatherState ;


 int ExecClearTuple (scalar_t__) ;
 int ExecEndNode (int ) ;
 int ExecFreeExprContext (TYPE_4__*) ;
 int ExecShutdownGather (TYPE_1__*) ;
 int outerPlanState (TYPE_1__*) ;

void
ExecEndGather(GatherState *node)
{
 ExecEndNode(outerPlanState(node));
 ExecShutdownGather(node);
 ExecFreeExprContext(&node->ps);
 if (node->ps.ps_ResultTupleSlot)
  ExecClearTuple(node->ps.ps_ResultTupleSlot);
}
