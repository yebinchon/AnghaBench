
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_15__ {int plan; } ;
struct TYPE_14__ {int path; int single_copy; int num_workers; int subpath; } ;
struct TYPE_13__ {TYPE_1__* glob; } ;
struct TYPE_12__ {int parallelModeNeeded; } ;
typedef TYPE_2__ PlannerInfo ;
typedef int Plan ;
typedef int List ;
typedef TYPE_3__ GatherPath ;
typedef TYPE_4__ Gather ;


 int CP_EXACT_TLIST ;
 int NIL ;
 int assign_special_exec_param (TYPE_2__*) ;
 int * build_path_tlist (TYPE_2__*,int *) ;
 int copy_generic_path_info (int *,int *) ;
 int * create_plan_recurse (TYPE_2__*,int ,int ) ;
 TYPE_4__* make_gather (int *,int ,int ,int ,int ,int *) ;

__attribute__((used)) static Gather *
create_gather_plan(PlannerInfo *root, GatherPath *best_path)
{
 Gather *gather_plan;
 Plan *subplan;
 List *tlist;





 subplan = create_plan_recurse(root, best_path->subpath, CP_EXACT_TLIST);

 tlist = build_path_tlist(root, &best_path->path);

 gather_plan = make_gather(tlist,
         NIL,
         best_path->num_workers,
         assign_special_exec_param(root),
         best_path->single_copy,
         subplan);

 copy_generic_path_info(&gather_plan->plan, &best_path->path);


 root->glob->parallelModeNeeded = 1;

 return gather_plan;
}
