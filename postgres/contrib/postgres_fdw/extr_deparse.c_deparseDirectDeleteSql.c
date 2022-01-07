
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int ** params_list; int buf; TYPE_2__* scanrel; TYPE_2__* foreignrel; int * root; } ;
typedef TYPE_1__ deparse_expr_cxt ;
struct TYPE_8__ {scalar_t__ reloptkind; } ;
typedef int StringInfo ;
typedef int Relation ;
typedef TYPE_2__ RelOptInfo ;
typedef int PlannerInfo ;
typedef int List ;
typedef int Index ;


 int * NIL ;
 scalar_t__ RELOPT_JOINREL ;
 int REL_ALIAS_PREFIX ;
 int appendConditions (int *,TYPE_1__*) ;
 int appendStringInfo (int ,char*,int ,int ) ;
 int appendStringInfoString (int ,char*) ;
 int deparseExplicitTargetList (int *,int,int **,TYPE_1__*) ;
 int deparseFromExprForRel (int ,int *,TYPE_2__*,int,int ,int **,int **) ;
 int deparseRelation (int ,int ) ;
 int deparseReturningList (int ,int ,int ,int ,int,int *,int *,int **) ;
 int * list_concat (int *,int *) ;
 int planner_rt_fetch (int ,int *) ;

void
deparseDirectDeleteSql(StringInfo buf, PlannerInfo *root,
        Index rtindex, Relation rel,
        RelOptInfo *foreignrel,
        List *remote_conds,
        List **params_list,
        List *returningList,
        List **retrieved_attrs)
{
 deparse_expr_cxt context;


 context.root = root;
 context.foreignrel = foreignrel;
 context.scanrel = foreignrel;
 context.buf = buf;
 context.params_list = params_list;

 appendStringInfoString(buf, "DELETE FROM ");
 deparseRelation(buf, rel);
 if (foreignrel->reloptkind == RELOPT_JOINREL)
  appendStringInfo(buf, " %s%d", REL_ALIAS_PREFIX, rtindex);

 if (foreignrel->reloptkind == RELOPT_JOINREL)
 {
  List *ignore_conds = NIL;

  appendStringInfoString(buf, " USING ");
  deparseFromExprForRel(buf, root, foreignrel, 1, rtindex,
         &ignore_conds, params_list);
  remote_conds = list_concat(remote_conds, ignore_conds);
 }

 if (remote_conds)
 {
  appendStringInfoString(buf, " WHERE ");
  appendConditions(remote_conds, &context);
 }

 if (foreignrel->reloptkind == RELOPT_JOINREL)
  deparseExplicitTargetList(returningList, 1, retrieved_attrs,
          &context);
 else
  deparseReturningList(buf, planner_rt_fetch(rtindex, root),
        rtindex, rel, 0,
        NIL, returningList, retrieved_attrs);
}
