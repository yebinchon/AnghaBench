
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_17__ {int plan; } ;
struct TYPE_18__ {TYPE_2__ scan; } ;
typedef TYPE_3__ WorkTableScan ;
struct TYPE_21__ {scalar_t__ param_info; TYPE_1__* parent; } ;
struct TYPE_20__ {scalar_t__ wt_param_id; struct TYPE_20__* parent_root; } ;
struct TYPE_19__ {scalar_t__ rtekind; int self_reference; scalar_t__ ctelevelsup; int ctename; } ;
struct TYPE_16__ {scalar_t__ relid; } ;
typedef TYPE_4__ RangeTblEntry ;
typedef TYPE_5__ PlannerInfo ;
typedef TYPE_6__ Path ;
typedef int Node ;
typedef int List ;
typedef scalar_t__ Index ;


 int Assert (int) ;
 int ERROR ;
 scalar_t__ RTE_CTE ;
 int copy_generic_path_info (int *,TYPE_6__*) ;
 int elog (int ,char*,int ) ;
 int * extract_actual_clauses (int *,int) ;
 TYPE_3__* make_worktablescan (int *,int *,scalar_t__,scalar_t__) ;
 int * order_qual_clauses (TYPE_5__*,int *) ;
 TYPE_4__* planner_rt_fetch (scalar_t__,TYPE_5__*) ;
 scalar_t__ replace_nestloop_params (TYPE_5__*,int *) ;

__attribute__((used)) static WorkTableScan *
create_worktablescan_plan(PlannerInfo *root, Path *best_path,
        List *tlist, List *scan_clauses)
{
 WorkTableScan *scan_plan;
 Index scan_relid = best_path->parent->relid;
 RangeTblEntry *rte;
 Index levelsup;
 PlannerInfo *cteroot;

 Assert(scan_relid > 0);
 rte = planner_rt_fetch(scan_relid, root);
 Assert(rte->rtekind == RTE_CTE);
 Assert(rte->self_reference);






 levelsup = rte->ctelevelsup;
 if (levelsup == 0)
  elog(ERROR, "bad levelsup for CTE \"%s\"", rte->ctename);
 levelsup--;
 cteroot = root;
 while (levelsup-- > 0)
 {
  cteroot = cteroot->parent_root;
  if (!cteroot)
   elog(ERROR, "bad levelsup for CTE \"%s\"", rte->ctename);
 }
 if (cteroot->wt_param_id < 0)
  elog(ERROR, "could not find param ID for CTE \"%s\"", rte->ctename);


 scan_clauses = order_qual_clauses(root, scan_clauses);


 scan_clauses = extract_actual_clauses(scan_clauses, 0);


 if (best_path->param_info)
 {
  scan_clauses = (List *)
   replace_nestloop_params(root, (Node *) scan_clauses);
 }

 scan_plan = make_worktablescan(tlist, scan_clauses, scan_relid,
           cteroot->wt_param_id);

 copy_generic_path_info(&scan_plan->scan.plan, best_path);

 return scan_plan;
}
