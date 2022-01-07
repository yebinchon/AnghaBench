
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int plan; } ;
struct TYPE_13__ {TYPE_2__ scan; } ;
typedef TYPE_3__ TableFuncScan ;
typedef int TableFunc ;
struct TYPE_15__ {scalar_t__ param_info; TYPE_1__* parent; } ;
struct TYPE_14__ {scalar_t__ rtekind; int * tablefunc; } ;
struct TYPE_11__ {scalar_t__ relid; } ;
typedef TYPE_4__ RangeTblEntry ;
typedef int PlannerInfo ;
typedef TYPE_5__ Path ;
typedef int Node ;
typedef int List ;
typedef scalar_t__ Index ;


 int Assert (int) ;
 scalar_t__ RTE_TABLEFUNC ;
 int copy_generic_path_info (int *,TYPE_5__*) ;
 int * extract_actual_clauses (int *,int) ;
 TYPE_3__* make_tablefuncscan (int *,int *,scalar_t__,int *) ;
 int * order_qual_clauses (int *,int *) ;
 TYPE_4__* planner_rt_fetch (scalar_t__,int *) ;
 scalar_t__ replace_nestloop_params (int *,int *) ;

__attribute__((used)) static TableFuncScan *
create_tablefuncscan_plan(PlannerInfo *root, Path *best_path,
        List *tlist, List *scan_clauses)
{
 TableFuncScan *scan_plan;
 Index scan_relid = best_path->parent->relid;
 RangeTblEntry *rte;
 TableFunc *tablefunc;


 Assert(scan_relid > 0);
 rte = planner_rt_fetch(scan_relid, root);
 Assert(rte->rtekind == RTE_TABLEFUNC);
 tablefunc = rte->tablefunc;


 scan_clauses = order_qual_clauses(root, scan_clauses);


 scan_clauses = extract_actual_clauses(scan_clauses, 0);


 if (best_path->param_info)
 {
  scan_clauses = (List *)
   replace_nestloop_params(root, (Node *) scan_clauses);

  tablefunc = (TableFunc *) replace_nestloop_params(root, (Node *) tablefunc);
 }

 scan_plan = make_tablefuncscan(tlist, scan_clauses, scan_relid,
           tablefunc);

 copy_generic_path_info(&scan_plan->scan.plan, best_path);

 return scan_plan;
}
