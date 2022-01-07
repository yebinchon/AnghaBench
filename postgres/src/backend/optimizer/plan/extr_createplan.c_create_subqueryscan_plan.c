
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ param_info; TYPE_4__* parent; } ;
struct TYPE_12__ {scalar_t__ relid; scalar_t__ rtekind; int subplan_params; int subroot; } ;
struct TYPE_9__ {int plan; } ;
struct TYPE_11__ {TYPE_1__ scan; } ;
struct TYPE_10__ {TYPE_8__ path; int subpath; } ;
typedef TYPE_2__ SubqueryScanPath ;
typedef TYPE_3__ SubqueryScan ;
typedef TYPE_4__ RelOptInfo ;
typedef int PlannerInfo ;
typedef int Plan ;
typedef int Node ;
typedef int List ;
typedef scalar_t__ Index ;


 int Assert (int) ;
 scalar_t__ RTE_SUBQUERY ;
 int copy_generic_path_info (int *,TYPE_8__*) ;
 int * create_plan (int ,int ) ;
 int * extract_actual_clauses (int *,int) ;
 TYPE_3__* make_subqueryscan (int *,int *,scalar_t__,int *) ;
 int * order_qual_clauses (int *,int *) ;
 int process_subquery_nestloop_params (int *,int ) ;
 scalar_t__ replace_nestloop_params (int *,int *) ;

__attribute__((used)) static SubqueryScan *
create_subqueryscan_plan(PlannerInfo *root, SubqueryScanPath *best_path,
       List *tlist, List *scan_clauses)
{
 SubqueryScan *scan_plan;
 RelOptInfo *rel = best_path->path.parent;
 Index scan_relid = rel->relid;
 Plan *subplan;


 Assert(scan_relid > 0);
 Assert(rel->rtekind == RTE_SUBQUERY);






 subplan = create_plan(rel->subroot, best_path->subpath);


 scan_clauses = order_qual_clauses(root, scan_clauses);


 scan_clauses = extract_actual_clauses(scan_clauses, 0);


 if (best_path->path.param_info)
 {
  scan_clauses = (List *)
   replace_nestloop_params(root, (Node *) scan_clauses);
  process_subquery_nestloop_params(root,
           rel->subplan_params);
 }

 scan_plan = make_subqueryscan(tlist,
          scan_clauses,
          scan_relid,
          subplan);

 copy_generic_path_info(&scan_plan->scan.plan, &best_path->path);

 return scan_plan;
}
