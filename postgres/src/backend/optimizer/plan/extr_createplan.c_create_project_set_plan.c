
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int plan; } ;
struct TYPE_6__ {int path; int subpath; } ;
typedef TYPE_1__ ProjectSetPath ;
typedef TYPE_2__ ProjectSet ;
typedef int PlannerInfo ;
typedef int Plan ;
typedef int Path ;
typedef int List ;


 int * build_path_tlist (int *,int *) ;
 int copy_generic_path_info (int *,int *) ;
 int * create_plan_recurse (int *,int ,int ) ;
 TYPE_2__* make_project_set (int *,int *) ;

__attribute__((used)) static ProjectSet *
create_project_set_plan(PlannerInfo *root, ProjectSetPath *best_path)
{
 ProjectSet *plan;
 Plan *subplan;
 List *tlist;


 subplan = create_plan_recurse(root, best_path->subpath, 0);

 tlist = build_path_tlist(root, &best_path->path);

 plan = make_project_set(tlist, subplan);

 copy_generic_path_info(&plan->plan, (Path *) best_path);

 return plan;
}
