
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ param_info; TYPE_1__* parent; } ;
struct TYPE_9__ {int plan; } ;
struct TYPE_8__ {scalar_t__ relid; scalar_t__ rtekind; } ;
typedef TYPE_2__ SeqScan ;
typedef int PlannerInfo ;
typedef TYPE_3__ Path ;
typedef int Node ;
typedef int List ;
typedef scalar_t__ Index ;


 int Assert (int) ;
 scalar_t__ RTE_RELATION ;
 int copy_generic_path_info (int *,TYPE_3__*) ;
 int * extract_actual_clauses (int *,int) ;
 TYPE_2__* make_seqscan (int *,int *,scalar_t__) ;
 int * order_qual_clauses (int *,int *) ;
 scalar_t__ replace_nestloop_params (int *,int *) ;

__attribute__((used)) static SeqScan *
create_seqscan_plan(PlannerInfo *root, Path *best_path,
     List *tlist, List *scan_clauses)
{
 SeqScan *scan_plan;
 Index scan_relid = best_path->parent->relid;


 Assert(scan_relid > 0);
 Assert(best_path->parent->rtekind == RTE_RELATION);


 scan_clauses = order_qual_clauses(root, scan_clauses);


 scan_clauses = extract_actual_clauses(scan_clauses, 0);


 if (best_path->param_info)
 {
  scan_clauses = (List *)
   replace_nestloop_params(root, (Node *) scan_clauses);
 }

 scan_plan = make_seqscan(tlist,
        scan_clauses,
        scan_relid);

 copy_generic_path_info(&scan_plan->plan, best_path);

 return scan_plan;
}
