
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int pathkeys; } ;
struct TYPE_8__ {int numkeys; TYPE_1__ path; int subpath; } ;
typedef TYPE_2__ UpperUniquePath ;
struct TYPE_9__ {int plan; } ;
typedef TYPE_3__ Unique ;
typedef int PlannerInfo ;
typedef int Plan ;
typedef int Path ;


 int CP_LABEL_TLIST ;
 int copy_generic_path_info (int *,int *) ;
 int * create_plan_recurse (int *,int ,int) ;
 TYPE_3__* make_unique_from_pathkeys (int *,int ,int ) ;

__attribute__((used)) static Unique *
create_upper_unique_plan(PlannerInfo *root, UpperUniquePath *best_path, int flags)
{
 Unique *plan;
 Plan *subplan;





 subplan = create_plan_recurse(root, best_path->subpath,
          flags | CP_LABEL_TLIST);

 plan = make_unique_from_pathkeys(subplan,
          best_path->path.pathkeys,
          best_path->numkeys);

 copy_generic_path_info(&plan->plan, (Path *) best_path);

 return plan;
}
