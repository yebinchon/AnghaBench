
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


struct TYPE_25__ {int rows; } ;
struct TYPE_24__ {int wt_param_id; TYPE_4__* non_recursive_path; } ;
struct TYPE_23__ {int reltarget; int relids; TYPE_4__* cheapest_total_path; } ;
struct TYPE_22__ {scalar_t__ op; scalar_t__ all; int colCollations; int colTypes; int rarg; int larg; } ;
typedef TYPE_1__ SetOperationStmt ;
typedef TYPE_2__ RelOptInfo ;
typedef TYPE_3__ PlannerInfo ;
typedef TYPE_4__ Path ;
typedef int List ;


 int Assert (int) ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 int * NIL ;
 scalar_t__ SETOP_UNION ;
 int UPPERREL_SETOP ;
 int add_path (TYPE_2__*,TYPE_4__*) ;
 int bms_union (int ,int ) ;
 int create_pathtarget (TYPE_3__*,int *) ;
 scalar_t__ create_recursiveunion_path (TYPE_3__*,TYPE_2__*,TYPE_4__*,TYPE_4__*,int ,int *,int ,double) ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*) ;
 int errmsg (char*) ;
 TYPE_2__* fetch_upper_rel (TYPE_3__*,int ,int ) ;
 int * generate_append_tlist (int ,int ,int,int ,int *) ;
 int * generate_setop_grouplist (TYPE_1__*,int *) ;
 int grouping_is_hashable (int *) ;
 int list_make2 (int *,int *) ;
 int postprocess_setop_rel (TYPE_3__*,TYPE_2__*) ;
 TYPE_2__* recurse_set_operations (int ,TYPE_3__*,int ,int ,int,int,int *,int **,int *) ;

__attribute__((used)) static RelOptInfo *
generate_recursion_path(SetOperationStmt *setOp, PlannerInfo *root,
      List *refnames_tlist,
      List **pTargetList)
{
 RelOptInfo *result_rel;
 Path *path;
 RelOptInfo *lrel,
      *rrel;
 Path *lpath;
 Path *rpath;
 List *lpath_tlist;
 List *rpath_tlist;
 List *tlist;
 List *groupList;
 double dNumGroups;


 if (setOp->op != SETOP_UNION)
  elog(ERROR, "only UNION queries can be recursive");

 Assert(root->wt_param_id >= 0);





 lrel = recurse_set_operations(setOp->larg, root,
          setOp->colTypes, setOp->colCollations,
          0, -1,
          refnames_tlist,
          &lpath_tlist,
          ((void*)0));
 lpath = lrel->cheapest_total_path;

 root->non_recursive_path = lpath;
 rrel = recurse_set_operations(setOp->rarg, root,
          setOp->colTypes, setOp->colCollations,
          0, -1,
          refnames_tlist,
          &rpath_tlist,
          ((void*)0));
 rpath = rrel->cheapest_total_path;
 root->non_recursive_path = ((void*)0);




 tlist = generate_append_tlist(setOp->colTypes, setOp->colCollations, 0,
          list_make2(lpath_tlist, rpath_tlist),
          refnames_tlist);

 *pTargetList = tlist;


 result_rel = fetch_upper_rel(root, UPPERREL_SETOP,
         bms_union(lrel->relids, rrel->relids));
 result_rel->reltarget = create_pathtarget(root, tlist);




 if (setOp->all)
 {
  groupList = NIL;
  dNumGroups = 0;
 }
 else
 {

  groupList = generate_setop_grouplist(setOp, tlist);


  if (!grouping_is_hashable(groupList))
   ereport(ERROR,
     (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("could not implement recursive UNION"),
      errdetail("All column datatypes must be hashable.")));





  dNumGroups = lpath->rows + rpath->rows * 10;
 }




 path = (Path *) create_recursiveunion_path(root,
              result_rel,
              lpath,
              rpath,
              result_rel->reltarget,
              groupList,
              root->wt_param_id,
              dNumGroups);

 add_path(result_rel, path);
 postprocess_setop_rel(root, result_rel);
 return result_rel;
}
