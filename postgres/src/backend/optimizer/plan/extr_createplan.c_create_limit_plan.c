
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int plan; } ;
struct TYPE_6__ {int limitCount; int limitOffset; int subpath; } ;
typedef int PlannerInfo ;
typedef int Plan ;
typedef int Path ;
typedef TYPE_1__ LimitPath ;
typedef TYPE_2__ Limit ;


 int copy_generic_path_info (int *,int *) ;
 int * create_plan_recurse (int *,int ,int) ;
 TYPE_2__* make_limit (int *,int ,int ) ;

__attribute__((used)) static Limit *
create_limit_plan(PlannerInfo *root, LimitPath *best_path, int flags)
{
 Limit *plan;
 Plan *subplan;


 subplan = create_plan_recurse(root, best_path->subpath, flags);

 plan = make_limit(subplan,
       best_path->limitOffset,
       best_path->limitCount);

 copy_generic_path_info(&plan->plan, (Path *) best_path);

 return plan;
}
