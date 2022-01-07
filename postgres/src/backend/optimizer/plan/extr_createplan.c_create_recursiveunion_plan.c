
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int plan; } ;
struct TYPE_6__ {int distinctList; int wtParam; int numGroups; int path; int rightpath; int leftpath; } ;
typedef TYPE_1__ RecursiveUnionPath ;
typedef TYPE_2__ RecursiveUnion ;
typedef int PlannerInfo ;
typedef int Plan ;
typedef int Path ;
typedef int List ;


 int CP_EXACT_TLIST ;
 scalar_t__ LONG_MAX ;
 scalar_t__ Min (int ,double) ;
 int * build_path_tlist (int *,int *) ;
 int copy_generic_path_info (int *,int *) ;
 int * create_plan_recurse (int *,int ,int ) ;
 TYPE_2__* make_recursive_union (int *,int *,int *,int ,int ,long) ;

__attribute__((used)) static RecursiveUnion *
create_recursiveunion_plan(PlannerInfo *root, RecursiveUnionPath *best_path)
{
 RecursiveUnion *plan;
 Plan *leftplan;
 Plan *rightplan;
 List *tlist;
 long numGroups;


 leftplan = create_plan_recurse(root, best_path->leftpath, CP_EXACT_TLIST);
 rightplan = create_plan_recurse(root, best_path->rightpath, CP_EXACT_TLIST);

 tlist = build_path_tlist(root, &best_path->path);


 numGroups = (long) Min(best_path->numGroups, (double) LONG_MAX);

 plan = make_recursive_union(tlist,
        leftplan,
        rightplan,
        best_path->wtParam,
        best_path->distinctList,
        numGroups);

 copy_generic_path_info(&plan->plan, (Path *) best_path);

 return plan;
}
