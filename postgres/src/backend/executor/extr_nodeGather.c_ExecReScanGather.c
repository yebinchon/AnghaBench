
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ rescan_param; } ;
struct TYPE_10__ {scalar_t__ plan; } ;
struct TYPE_12__ {int initialized; TYPE_1__ ps; } ;
struct TYPE_11__ {int * chgParam; } ;
typedef TYPE_2__ PlanState ;
typedef TYPE_3__ GatherState ;
typedef TYPE_4__ Gather ;


 int ExecReScan (TYPE_2__*) ;
 int ExecShutdownGatherWorkers (TYPE_3__*) ;
 int * bms_add_member (int *,scalar_t__) ;
 TYPE_2__* outerPlanState (TYPE_3__*) ;

void
ExecReScanGather(GatherState *node)
{
 Gather *gather = (Gather *) node->ps.plan;
 PlanState *outerPlan = outerPlanState(node);


 ExecShutdownGatherWorkers(node);


 node->initialized = 0;
 if (gather->rescan_param >= 0)
  outerPlan->chgParam = bms_add_member(outerPlan->chgParam,
            gather->rescan_param);
 if (outerPlan->chgParam == ((void*)0))
  ExecReScan(outerPlan);
}
