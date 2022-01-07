
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int plan; } ;
struct TYPE_10__ {int groupClause; int qual; int path; int subpath; } ;
struct TYPE_9__ {int targetlist; } ;
typedef int PlannerInfo ;
typedef TYPE_1__ Plan ;
typedef int Path ;
typedef int List ;
typedef TYPE_2__ GroupPath ;
typedef TYPE_3__ Group ;


 int CP_LABEL_TLIST ;
 int * build_path_tlist (int *,int *) ;
 int copy_generic_path_info (int *,int *) ;
 TYPE_1__* create_plan_recurse (int *,int ,int ) ;
 int extract_grouping_collations (int ,int ) ;
 int extract_grouping_cols (int ,int ) ;
 int extract_grouping_ops (int ) ;
 int list_length (int ) ;
 TYPE_3__* make_group (int *,int *,int ,int ,int ,int ,TYPE_1__*) ;
 int * order_qual_clauses (int *,int ) ;

__attribute__((used)) static Group *
create_group_plan(PlannerInfo *root, GroupPath *best_path)
{
 Group *plan;
 Plan *subplan;
 List *tlist;
 List *quals;





 subplan = create_plan_recurse(root, best_path->subpath, CP_LABEL_TLIST);

 tlist = build_path_tlist(root, &best_path->path);

 quals = order_qual_clauses(root, best_path->qual);

 plan = make_group(tlist,
       quals,
       list_length(best_path->groupClause),
       extract_grouping_cols(best_path->groupClause,
           subplan->targetlist),
       extract_grouping_ops(best_path->groupClause),
       extract_grouping_collations(best_path->groupClause,
              subplan->targetlist),
       subplan);

 copy_generic_path_info(&plan->plan, (Path *) best_path);

 return plan;
}
