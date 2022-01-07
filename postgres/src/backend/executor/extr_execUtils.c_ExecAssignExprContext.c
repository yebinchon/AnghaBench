
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ps_ExprContext; } ;
typedef TYPE_1__ PlanState ;
typedef int EState ;


 int CreateExprContext (int *) ;

void
ExecAssignExprContext(EState *estate, PlanState *planstate)
{
 planstate->ps_ExprContext = CreateExprContext(estate);
}
