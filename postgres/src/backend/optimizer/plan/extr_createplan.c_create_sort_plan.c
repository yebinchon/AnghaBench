
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {int parent; } ;
struct TYPE_12__ {int plan; } ;
struct TYPE_9__ {TYPE_2__* parent; int pathkeys; } ;
struct TYPE_11__ {TYPE_1__ path; TYPE_8__* subpath; } ;
struct TYPE_10__ {int * relids; } ;
typedef TYPE_3__ SortPath ;
typedef TYPE_4__ Sort ;
typedef int PlannerInfo ;
typedef int Plan ;
typedef int Path ;


 int CP_SMALL_TLIST ;
 scalar_t__ IS_OTHER_REL (int ) ;
 int copy_generic_path_info (int *,int *) ;
 int * create_plan_recurse (int *,TYPE_8__*,int) ;
 TYPE_4__* make_sort_from_pathkeys (int *,int ,int *) ;

__attribute__((used)) static Sort *
create_sort_plan(PlannerInfo *root, SortPath *best_path, int flags)
{
 Sort *plan;
 Plan *subplan;






 subplan = create_plan_recurse(root, best_path->subpath,
          flags | CP_SMALL_TLIST);







 plan = make_sort_from_pathkeys(subplan, best_path->path.pathkeys,
           IS_OTHER_REL(best_path->subpath->parent) ?
           best_path->path.parent->relids : ((void*)0));

 copy_generic_path_info(&plan->plan, (Path *) best_path);

 return plan;
}
