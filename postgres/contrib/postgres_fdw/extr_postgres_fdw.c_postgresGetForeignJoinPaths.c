
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_6__ ;
typedef struct TYPE_31__ TYPE_5__ ;
typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;


struct TYPE_32__ {int * sjinfo; } ;
struct TYPE_31__ {int pushdown_safe; double rows; int width; void* total_cost; void* startup_cost; int jointype; int joinclauses; void* joinclause_sel; int use_remote_estimate; int local_conds; int local_conds_cost; void* local_conds_sel; int * attrs_used; } ;
struct TYPE_30__ {scalar_t__ rowMarks; TYPE_1__* parse; } ;
struct TYPE_29__ {double rows; int lateral_relids; TYPE_2__* reltarget; TYPE_5__* fdw_private; } ;
struct TYPE_28__ {int width; } ;
struct TYPE_27__ {scalar_t__ commandType; } ;
typedef TYPE_3__ RelOptInfo ;
typedef TYPE_4__ PlannerInfo ;
typedef TYPE_5__ PgFdwRelationInfo ;
typedef int Path ;
typedef int JoinType ;
typedef TYPE_6__ JoinPathExtraData ;
typedef int ForeignPath ;
typedef void* Cost ;


 scalar_t__ CMD_DELETE ;
 scalar_t__ CMD_UPDATE ;
 int DEBUG3 ;
 int * GetExistingLocalJoinPath (TYPE_3__*) ;
 int JOIN_INNER ;
 int NIL ;
 int add_path (TYPE_3__*,int *) ;
 int add_paths_with_pathkeys_for_rel (TYPE_4__*,TYPE_3__*,int *) ;
 int bms_is_empty (int ) ;
 void* clauselist_selectivity (TYPE_4__*,int ,int ,int ,int *) ;
 int cost_qual_eval (int *,int ,TYPE_4__*) ;
 int * create_foreign_join_path (TYPE_4__*,TYPE_3__*,int *,double,void*,void*,int ,int ,int *,int ) ;
 int elog (int ,char*) ;
 int estimate_path_cost_size (TYPE_4__*,TYPE_3__*,int ,int ,int *,double*,int*,void**,void**) ;
 int foreign_join_ok (TYPE_4__*,TYPE_3__*,int ,TYPE_3__*,TYPE_3__*,TYPE_6__*) ;
 scalar_t__ palloc0 (int) ;
 int pfree (int *) ;

__attribute__((used)) static void
postgresGetForeignJoinPaths(PlannerInfo *root,
       RelOptInfo *joinrel,
       RelOptInfo *outerrel,
       RelOptInfo *innerrel,
       JoinType jointype,
       JoinPathExtraData *extra)
{
 PgFdwRelationInfo *fpinfo;
 ForeignPath *joinpath;
 double rows;
 int width;
 Cost startup_cost;
 Cost total_cost;
 Path *epq_path;





 if (joinrel->fdw_private)
  return;





 if (!bms_is_empty(joinrel->lateral_relids))
  return;
 fpinfo = (PgFdwRelationInfo *) palloc0(sizeof(PgFdwRelationInfo));
 fpinfo->pushdown_safe = 0;
 joinrel->fdw_private = fpinfo;

 fpinfo->attrs_used = ((void*)0);
 if (root->parse->commandType == CMD_DELETE ||
  root->parse->commandType == CMD_UPDATE ||
  root->rowMarks)
 {
  epq_path = GetExistingLocalJoinPath(joinrel);
  if (!epq_path)
  {
   elog(DEBUG3, "could not push down foreign join because a local path suitable for EPQ checks was not found");
   return;
  }
 }
 else
  epq_path = ((void*)0);

 if (!foreign_join_ok(root, joinrel, jointype, outerrel, innerrel, extra))
 {

  if (epq_path)
   pfree(epq_path);
  return;
 }
 fpinfo->local_conds_sel = clauselist_selectivity(root,
              fpinfo->local_conds,
              0,
              JOIN_INNER,
              ((void*)0));
 cost_qual_eval(&fpinfo->local_conds_cost, fpinfo->local_conds, root);





 if (!fpinfo->use_remote_estimate)
  fpinfo->joinclause_sel = clauselist_selectivity(root, fpinfo->joinclauses,
              0, fpinfo->jointype,
              extra->sjinfo);


 estimate_path_cost_size(root, joinrel, NIL, NIL, ((void*)0),
       &rows, &width, &startup_cost, &total_cost);

 joinrel->rows = rows;
 joinrel->reltarget->width = width;
 fpinfo->rows = rows;
 fpinfo->width = width;
 fpinfo->startup_cost = startup_cost;
 fpinfo->total_cost = total_cost;





 joinpath = create_foreign_join_path(root,
          joinrel,
          ((void*)0),
          rows,
          startup_cost,
          total_cost,
          NIL,
          joinrel->lateral_relids,
          epq_path,
          NIL);


 add_path(joinrel, (Path *) joinpath);


 add_paths_with_pathkeys_for_rel(root, joinrel, epq_path);


}
