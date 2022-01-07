
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int quals; int path; } ;
struct TYPE_6__ {int plan; } ;
typedef TYPE_1__ Result ;
typedef int PlannerInfo ;
typedef int Path ;
typedef int Node ;
typedef int List ;
typedef TYPE_2__ GroupResultPath ;


 int * build_path_tlist (int *,int *) ;
 int copy_generic_path_info (int *,int *) ;
 TYPE_1__* make_result (int *,int *,int *) ;
 int * order_qual_clauses (int *,int ) ;

__attribute__((used)) static Result *
create_group_result_plan(PlannerInfo *root, GroupResultPath *best_path)
{
 Result *plan;
 List *tlist;
 List *quals;

 tlist = build_path_tlist(root, &best_path->path);


 quals = order_qual_clauses(root, best_path->quals);

 plan = make_result(tlist, (Node *) quals, ((void*)0));

 copy_generic_path_info(&plan->plan, (Path *) best_path);

 return plan;
}
