
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ rescan_param; } ;
struct TYPE_11__ {scalar_t__ plan; } ;
struct TYPE_13__ {int initialized; int gm_initialized; TYPE_1__ ps; } ;
struct TYPE_12__ {int * chgParam; } ;
typedef TYPE_2__ PlanState ;
typedef TYPE_3__ GatherMergeState ;
typedef TYPE_4__ GatherMerge ;


 int ExecReScan (TYPE_2__*) ;
 int ExecShutdownGatherMergeWorkers (TYPE_3__*) ;
 int * bms_add_member (int *,scalar_t__) ;
 int gather_merge_clear_tuples (TYPE_3__*) ;
 TYPE_2__* outerPlanState (TYPE_3__*) ;

void
ExecReScanGatherMerge(GatherMergeState *node)
{
 GatherMerge *gm = (GatherMerge *) node->ps.plan;
 PlanState *outerPlan = outerPlanState(node);


 ExecShutdownGatherMergeWorkers(node);


 gather_merge_clear_tuples(node);


 node->initialized = 0;
 node->gm_initialized = 0;
 if (gm->rescan_param >= 0)
  outerPlan->chgParam = bms_add_member(outerPlan->chgParam,
            gm->rescan_param);
 if (outerPlan->chgParam == ((void*)0))
  ExecReScan(outerPlan);
}
