
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lr_epqstate; } ;
typedef TYPE_1__ LockRowsState ;


 int EvalPlanQualEnd (int *) ;
 int ExecEndNode (int ) ;
 int outerPlanState (TYPE_1__*) ;

void
ExecEndLockRows(LockRowsState *node)
{
 EvalPlanQualEnd(&node->lr_epqstate);
 ExecEndNode(outerPlanState(node));
}
