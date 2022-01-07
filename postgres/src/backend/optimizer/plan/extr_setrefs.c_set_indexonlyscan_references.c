
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int indexed_tlist ;
struct TYPE_5__ {int * qual; int * targetlist; } ;
struct TYPE_6__ {int scanrelid; TYPE_1__ plan; } ;
struct TYPE_7__ {void* indextlist; void* indexorderby; void* indexqual; TYPE_2__ scan; } ;
typedef int PlannerInfo ;
typedef int Plan ;
typedef int Node ;
typedef int List ;
typedef TYPE_3__ IndexOnlyScan ;


 int INDEX_VAR ;
 int * build_tlist_index (void*) ;
 void* fix_scan_list (int *,void*,int) ;
 scalar_t__ fix_upper_expr (int *,int *,int *,int ,int) ;
 int pfree (int *) ;

__attribute__((used)) static Plan *
set_indexonlyscan_references(PlannerInfo *root,
        IndexOnlyScan *plan,
        int rtoffset)
{
 indexed_tlist *index_itlist;

 index_itlist = build_tlist_index(plan->indextlist);

 plan->scan.scanrelid += rtoffset;
 plan->scan.plan.targetlist = (List *)
  fix_upper_expr(root,
        (Node *) plan->scan.plan.targetlist,
        index_itlist,
        INDEX_VAR,
        rtoffset);
 plan->scan.plan.qual = (List *)
  fix_upper_expr(root,
        (Node *) plan->scan.plan.qual,
        index_itlist,
        INDEX_VAR,
        rtoffset);

 plan->indexqual = fix_scan_list(root, plan->indexqual, rtoffset);

 plan->indexorderby = fix_scan_list(root, plan->indexorderby, rtoffset);

 plan->indextlist = fix_scan_list(root, plan->indextlist, rtoffset);

 pfree(index_itlist);

 return (Plan *) plan;
}
