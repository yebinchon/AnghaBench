
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int plan; } ;
struct TYPE_15__ {TYPE_1__ scan; } ;
struct TYPE_14__ {scalar_t__ param_info; TYPE_2__* parent; } ;
struct TYPE_13__ {scalar_t__ rtekind; int enrname; } ;
struct TYPE_12__ {scalar_t__ relid; } ;
typedef TYPE_3__ RangeTblEntry ;
typedef int PlannerInfo ;
typedef TYPE_4__ Path ;
typedef int Node ;
typedef TYPE_5__ NamedTuplestoreScan ;
typedef int List ;
typedef scalar_t__ Index ;


 int Assert (int) ;
 scalar_t__ RTE_NAMEDTUPLESTORE ;
 int copy_generic_path_info (int *,TYPE_4__*) ;
 int * extract_actual_clauses (int *,int) ;
 TYPE_5__* make_namedtuplestorescan (int *,int *,scalar_t__,int ) ;
 int * order_qual_clauses (int *,int *) ;
 TYPE_3__* planner_rt_fetch (scalar_t__,int *) ;
 scalar_t__ replace_nestloop_params (int *,int *) ;

__attribute__((used)) static NamedTuplestoreScan *
create_namedtuplestorescan_plan(PlannerInfo *root, Path *best_path,
        List *tlist, List *scan_clauses)
{
 NamedTuplestoreScan *scan_plan;
 Index scan_relid = best_path->parent->relid;
 RangeTblEntry *rte;

 Assert(scan_relid > 0);
 rte = planner_rt_fetch(scan_relid, root);
 Assert(rte->rtekind == RTE_NAMEDTUPLESTORE);


 scan_clauses = order_qual_clauses(root, scan_clauses);


 scan_clauses = extract_actual_clauses(scan_clauses, 0);


 if (best_path->param_info)
 {
  scan_clauses = (List *)
   replace_nestloop_params(root, (Node *) scan_clauses);
 }

 scan_plan = make_namedtuplestorescan(tlist, scan_clauses, scan_relid,
           rte->enrname);

 copy_generic_path_info(&scan_plan->scan.plan, best_path);

 return scan_plan;
}
