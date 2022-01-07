
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int plan; } ;
struct TYPE_6__ {int firstFlag; int flagColIdx; int distinctList; int strategy; int cmd; int numGroups; int subpath; } ;
typedef TYPE_1__ SetOpPath ;
typedef TYPE_2__ SetOp ;
typedef int PlannerInfo ;
typedef int Plan ;
typedef int Path ;


 int CP_LABEL_TLIST ;
 scalar_t__ LONG_MAX ;
 scalar_t__ Min (int ,double) ;
 int copy_generic_path_info (int *,int *) ;
 int * create_plan_recurse (int *,int ,int) ;
 TYPE_2__* make_setop (int ,int ,int *,int ,int ,int ,long) ;

__attribute__((used)) static SetOp *
create_setop_plan(PlannerInfo *root, SetOpPath *best_path, int flags)
{
 SetOp *plan;
 Plan *subplan;
 long numGroups;





 subplan = create_plan_recurse(root, best_path->subpath,
          flags | CP_LABEL_TLIST);


 numGroups = (long) Min(best_path->numGroups, (double) LONG_MAX);

 plan = make_setop(best_path->cmd,
       best_path->strategy,
       subplan,
       best_path->distinctList,
       best_path->flagColIdx,
       best_path->firstFlag,
       numGroups);

 copy_generic_path_info(&plan->plan, (Path *) best_path);

 return plan;
}
