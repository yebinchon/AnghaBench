
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ps; } ;
typedef TYPE_1__ LimitState ;


 int ExecEndNode (int ) ;
 int ExecFreeExprContext (int *) ;
 int outerPlanState (TYPE_1__*) ;

void
ExecEndLimit(LimitState *node)
{
 ExecFreeExprContext(&node->ps);
 ExecEndNode(outerPlanState(node));
}
