
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int TupleDesc ;
struct TYPE_5__ {int ps_ResultTupleDesc; TYPE_1__* plan; } ;
struct TYPE_4__ {int targetlist; } ;
typedef TYPE_2__ PlanState ;


 int ExecTypeFromTL (int ) ;

void
ExecInitResultTypeTL(PlanState *planstate)
{
 TupleDesc tupDesc = ExecTypeFromTL(planstate->plan->targetlist);

 planstate->ps_ResultTupleDesc = tupDesc;
}
