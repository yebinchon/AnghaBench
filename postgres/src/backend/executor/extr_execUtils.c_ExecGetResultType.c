
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int TupleDesc ;
struct TYPE_3__ {int ps_ResultTupleDesc; } ;
typedef TYPE_1__ PlanState ;



TupleDesc
ExecGetResultType(PlanState *planstate)
{
 return planstate->ps_ResultTupleDesc;
}
