
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int indexed_tlist ;
struct TYPE_5__ {int * qual; int * targetlist; } ;
struct TYPE_6__ {scalar_t__ scanrelid; TYPE_1__ plan; } ;
struct TYPE_7__ {scalar_t__ fdw_scan_tlist; int * fs_relids; int * fdw_recheck_quals; int * fdw_exprs; TYPE_2__ scan; } ;
typedef int PlannerInfo ;
typedef int Node ;
typedef int List ;
typedef TYPE_3__ ForeignScan ;
typedef int Bitmapset ;


 int INDEX_VAR ;
 scalar_t__ NIL ;
 int * bms_add_member (int *,int) ;
 int bms_next_member (int *,int) ;
 int * build_tlist_index (scalar_t__) ;
 void* fix_scan_list (int *,int *,int) ;
 scalar_t__ fix_upper_expr (int *,int *,int *,int ,int) ;
 int pfree (int *) ;

__attribute__((used)) static void
set_foreignscan_references(PlannerInfo *root,
         ForeignScan *fscan,
         int rtoffset)
{

 if (fscan->scan.scanrelid > 0)
  fscan->scan.scanrelid += rtoffset;

 if (fscan->fdw_scan_tlist != NIL || fscan->scan.scanrelid == 0)
 {




  indexed_tlist *itlist = build_tlist_index(fscan->fdw_scan_tlist);

  fscan->scan.plan.targetlist = (List *)
   fix_upper_expr(root,
         (Node *) fscan->scan.plan.targetlist,
         itlist,
         INDEX_VAR,
         rtoffset);
  fscan->scan.plan.qual = (List *)
   fix_upper_expr(root,
         (Node *) fscan->scan.plan.qual,
         itlist,
         INDEX_VAR,
         rtoffset);
  fscan->fdw_exprs = (List *)
   fix_upper_expr(root,
         (Node *) fscan->fdw_exprs,
         itlist,
         INDEX_VAR,
         rtoffset);
  fscan->fdw_recheck_quals = (List *)
   fix_upper_expr(root,
         (Node *) fscan->fdw_recheck_quals,
         itlist,
         INDEX_VAR,
         rtoffset);
  pfree(itlist);

  fscan->fdw_scan_tlist =
   fix_scan_list(root, fscan->fdw_scan_tlist, rtoffset);
 }
 else
 {




  fscan->scan.plan.targetlist =
   fix_scan_list(root, fscan->scan.plan.targetlist, rtoffset);
  fscan->scan.plan.qual =
   fix_scan_list(root, fscan->scan.plan.qual, rtoffset);
  fscan->fdw_exprs =
   fix_scan_list(root, fscan->fdw_exprs, rtoffset);
  fscan->fdw_recheck_quals =
   fix_scan_list(root, fscan->fdw_recheck_quals, rtoffset);
 }


 if (rtoffset > 0)
 {
  Bitmapset *tempset = ((void*)0);
  int x = -1;

  while ((x = bms_next_member(fscan->fs_relids, x)) >= 0)
   tempset = bms_add_member(tempset, x + rtoffset);
  fscan->fs_relids = tempset;
 }
}
