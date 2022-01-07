
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_49__ TYPE_4__ ;
typedef struct TYPE_48__ TYPE_3__ ;
typedef struct TYPE_47__ TYPE_2__ ;
typedef struct TYPE_46__ TYPE_1__ ;


struct TYPE_49__ {double rows; } ;
struct TYPE_48__ {double tuple_fraction; } ;
struct TYPE_47__ {double rows; int reltarget; int relids; TYPE_4__* cheapest_total_path; } ;
struct TYPE_46__ {int op; int colTypes; scalar_t__ all; int colCollations; int rarg; int larg; } ;
typedef TYPE_1__ SetOperationStmt ;
typedef int SetOpCmd ;
typedef TYPE_2__ RelOptInfo ;
typedef TYPE_3__ PlannerInfo ;
typedef TYPE_4__ Path ;
typedef TYPE_4__ List ;


 int ERROR ;
 double Min (double,double) ;
 int NIL ;
 int SETOPCMD_EXCEPT ;
 int SETOPCMD_EXCEPT_ALL ;
 int SETOPCMD_INTERSECT ;
 int SETOPCMD_INTERSECT_ALL ;

 int SETOP_HASHED ;

 int SETOP_SORTED ;
 int UPPERREL_SETOP ;
 int add_path (TYPE_2__*,TYPE_4__*) ;
 int bms_union (int ,int ) ;
 int choose_hashed_setop (TYPE_3__*,TYPE_4__*,TYPE_4__*,double,double,char*) ;
 scalar_t__ create_append_path (TYPE_3__*,TYPE_2__*,TYPE_4__*,int ,int ,int *,int ,int,int ,int) ;
 int create_pathtarget (TYPE_3__*,TYPE_4__*) ;
 scalar_t__ create_setop_path (TYPE_3__*,TYPE_2__*,TYPE_4__*,int ,int ,TYPE_4__*,scalar_t__,int,double,double) ;
 scalar_t__ create_sort_path (TYPE_3__*,TYPE_2__*,TYPE_4__*,int ,double) ;
 int elog (int ,char*,int) ;
 TYPE_2__* fetch_upper_rel (TYPE_3__*,int ,int ) ;
 TYPE_4__* generate_append_tlist (int ,int ,int,TYPE_4__*,TYPE_4__*) ;
 TYPE_4__* generate_setop_grouplist (TYPE_1__*,TYPE_4__*) ;
 scalar_t__ list_length (int ) ;
 TYPE_4__* list_make2 (TYPE_4__*,TYPE_4__*) ;
 int make_pathkeys_for_sortclauses (TYPE_3__*,TYPE_4__*,TYPE_4__*) ;
 TYPE_2__* recurse_set_operations (int ,TYPE_3__*,int ,int ,int,int,TYPE_4__*,TYPE_4__**,double*) ;

__attribute__((used)) static RelOptInfo *
generate_nonunion_paths(SetOperationStmt *op, PlannerInfo *root,
      List *refnames_tlist,
      List **pTargetList)
{
 RelOptInfo *result_rel;
 RelOptInfo *lrel,
      *rrel;
 double save_fraction = root->tuple_fraction;
 Path *lpath,
      *rpath,
      *path;
 List *lpath_tlist,
      *rpath_tlist,
      *tlist_list,
      *tlist,
      *groupList,
      *pathlist;
 double dLeftGroups,
    dRightGroups,
    dNumGroups,
    dNumOutputRows;
 bool use_hash;
 SetOpCmd cmd;
 int firstFlag;




 root->tuple_fraction = 0.0;


 lrel = recurse_set_operations(op->larg, root,
          op->colTypes, op->colCollations,
          0, 0,
          refnames_tlist,
          &lpath_tlist,
          &dLeftGroups);
 lpath = lrel->cheapest_total_path;
 rrel = recurse_set_operations(op->rarg, root,
          op->colTypes, op->colCollations,
          0, 1,
          refnames_tlist,
          &rpath_tlist,
          &dRightGroups);
 rpath = rrel->cheapest_total_path;


 root->tuple_fraction = save_fraction;







 if (op->op == 129 || dLeftGroups <= dRightGroups)
 {
  pathlist = list_make2(lpath, rpath);
  tlist_list = list_make2(lpath_tlist, rpath_tlist);
  firstFlag = 0;
 }
 else
 {
  pathlist = list_make2(rpath, lpath);
  tlist_list = list_make2(rpath_tlist, lpath_tlist);
  firstFlag = 1;
 }
 tlist = generate_append_tlist(op->colTypes, op->colCollations, 1,
          tlist_list, refnames_tlist);

 *pTargetList = tlist;


 result_rel = fetch_upper_rel(root, UPPERREL_SETOP,
         bms_union(lrel->relids, rrel->relids));
 result_rel->reltarget = create_pathtarget(root, tlist);




 path = (Path *) create_append_path(root, result_rel, pathlist, NIL,
            NIL, ((void*)0), 0, 0, NIL, -1);


 groupList = generate_setop_grouplist(op, tlist);
 if (op->op == 129)
 {
  dNumGroups = dLeftGroups;
  dNumOutputRows = op->all ? lpath->rows : dNumGroups;
 }
 else
 {
  dNumGroups = Min(dLeftGroups, dRightGroups);
  dNumOutputRows = op->all ? Min(lpath->rows, rpath->rows) : dNumGroups;
 }




 use_hash = choose_hashed_setop(root, groupList, path,
           dNumGroups, dNumOutputRows,
           (op->op == 128) ? "INTERSECT" : "EXCEPT");

 if (groupList && !use_hash)
  path = (Path *) create_sort_path(root,
           result_rel,
           path,
           make_pathkeys_for_sortclauses(root,
                    groupList,
                    tlist),
           -1.0);




 switch (op->op)
 {
  case 128:
   cmd = op->all ? SETOPCMD_INTERSECT_ALL : SETOPCMD_INTERSECT;
   break;
  case 129:
   cmd = op->all ? SETOPCMD_EXCEPT_ALL : SETOPCMD_EXCEPT;
   break;
  default:
   elog(ERROR, "unrecognized set op: %d", (int) op->op);
   cmd = SETOPCMD_INTERSECT;
   break;
 }
 path = (Path *) create_setop_path(root,
           result_rel,
           path,
           cmd,
           use_hash ? SETOP_HASHED : SETOP_SORTED,
           groupList,
           list_length(op->colTypes) + 1,
           use_hash ? firstFlag : -1,
           dNumGroups,
           dNumOutputRows);

 result_rel->rows = path->rows;
 add_path(result_rel, path);
 return result_rel;
}
