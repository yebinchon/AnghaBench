
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int plan; } ;
struct TYPE_6__ {int subpath; } ;
typedef int PlannerInfo ;
typedef int Plan ;
typedef int Path ;
typedef TYPE_1__ MaterialPath ;
typedef TYPE_2__ Material ;


 int CP_SMALL_TLIST ;
 int copy_generic_path_info (int *,int *) ;
 int * create_plan_recurse (int *,int ,int) ;
 TYPE_2__* make_material (int *) ;

__attribute__((used)) static Material *
create_material_plan(PlannerInfo *root, MaterialPath *best_path, int flags)
{
 Material *plan;
 Plan *subplan;






 subplan = create_plan_recurse(root, best_path->subpath,
          flags | CP_SMALL_TLIST);

 plan = make_material(subplan);

 copy_generic_path_info(&plan->plan, (Path *) best_path);

 return plan;
}
