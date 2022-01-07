
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int targetlist; } ;
struct TYPE_10__ {scalar_t__ plan_params; scalar_t__ curOuterParams; int processed_tlist; int * curOuterRels; } ;
typedef TYPE_1__ PlannerInfo ;
typedef TYPE_2__ Plan ;
typedef int Path ;


 int Assert (int) ;
 int CP_EXACT_TLIST ;
 int ERROR ;
 int IsA (TYPE_2__*,int ) ;
 int ModifyTable ;
 scalar_t__ NIL ;
 int SS_attach_initplans (TYPE_1__*,TYPE_2__*) ;
 int apply_tlist_labeling (int ,int ) ;
 TYPE_2__* create_plan_recurse (TYPE_1__*,int *,int ) ;
 int elog (int ,char*) ;

Plan *
create_plan(PlannerInfo *root, Path *best_path)
{
 Plan *plan;


 Assert(root->plan_params == NIL);


 root->curOuterRels = ((void*)0);
 root->curOuterParams = NIL;


 plan = create_plan_recurse(root, best_path, CP_EXACT_TLIST);
 if (!IsA(plan, ModifyTable))
  apply_tlist_labeling(plan->targetlist, root->processed_tlist);
 SS_attach_initplans(root, plan);


 if (root->curOuterParams != NIL)
  elog(ERROR, "failed to assign all NestLoopParams to plan nodes");





 root->plan_params = NIL;

 return plan;
}
