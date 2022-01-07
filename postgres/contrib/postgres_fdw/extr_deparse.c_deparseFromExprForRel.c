
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int ** params_list; int * root; TYPE_3__* scanrel; TYPE_3__* foreignrel; int buf; } ;
typedef TYPE_1__ deparse_expr_cxt ;
struct TYPE_17__ {scalar_t__ jointype; scalar_t__ joinclauses; int make_innerrel_subquery; int make_outerrel_subquery; TYPE_3__* innerrel; TYPE_3__* outerrel; } ;
struct TYPE_16__ {int relid; } ;
struct TYPE_15__ {int relid; int relids; scalar_t__ fdw_private; } ;
struct TYPE_14__ {int data; int len; } ;
typedef TYPE_2__ StringInfoData ;
typedef int StringInfo ;
typedef int Relation ;
typedef TYPE_3__ RelOptInfo ;
typedef TYPE_4__ RangeTblEntry ;
typedef int PlannerInfo ;
typedef TYPE_5__ PgFdwRelationInfo ;
typedef int List ;
typedef int Index ;


 int Assert (int) ;
 scalar_t__ IS_JOIN_REL (TYPE_3__*) ;
 scalar_t__ JOIN_INNER ;
 scalar_t__ NIL ;
 int NoLock ;
 int REL_ALIAS_PREFIX ;
 int appendBinaryStringInfo (int ,int ,int ) ;
 int appendConditions (scalar_t__,TYPE_1__*) ;
 int appendStringInfo (int ,char*,int ,int ,...) ;
 int appendStringInfoChar (int ,char) ;
 int appendStringInfoString (int ,char*) ;
 scalar_t__ bms_is_member (int ,int ) ;
 int deparseRangeTblRef (TYPE_2__*,int *,TYPE_3__*,int ,int ,int **,int **) ;
 int deparseRelation (int ,int ) ;
 int get_jointype_name (scalar_t__) ;
 int initStringInfo (TYPE_2__*) ;
 int * list_concat (int *,scalar_t__) ;
 TYPE_4__* planner_rt_fetch (int ,int *) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

__attribute__((used)) static void
deparseFromExprForRel(StringInfo buf, PlannerInfo *root, RelOptInfo *foreignrel,
       bool use_alias, Index ignore_rel, List **ignore_conds,
       List **params_list)
{
 PgFdwRelationInfo *fpinfo = (PgFdwRelationInfo *) foreignrel->fdw_private;

 if (IS_JOIN_REL(foreignrel))
 {
  StringInfoData join_sql_o;
  StringInfoData join_sql_i;
  RelOptInfo *outerrel = fpinfo->outerrel;
  RelOptInfo *innerrel = fpinfo->innerrel;
  bool outerrel_is_target = 0;
  bool innerrel_is_target = 0;

  if (ignore_rel > 0 && bms_is_member(ignore_rel, foreignrel->relids))
  {
   if (fpinfo->jointype == JOIN_INNER)
   {
    *ignore_conds = list_concat(*ignore_conds,
           fpinfo->joinclauses);
    fpinfo->joinclauses = NIL;
   }




   if (outerrel->relid == ignore_rel)
    outerrel_is_target = 1;
   else if (innerrel->relid == ignore_rel)
    innerrel_is_target = 1;
  }


  if (!outerrel_is_target)
  {
   initStringInfo(&join_sql_o);
   deparseRangeTblRef(&join_sql_o, root, outerrel,
          fpinfo->make_outerrel_subquery,
          ignore_rel, ignore_conds, params_list);
   if (innerrel_is_target)
   {
    Assert(fpinfo->jointype == JOIN_INNER);
    Assert(fpinfo->joinclauses == NIL);
    appendBinaryStringInfo(buf, join_sql_o.data, join_sql_o.len);
    return;
   }
  }


  if (!innerrel_is_target)
  {
   initStringInfo(&join_sql_i);
   deparseRangeTblRef(&join_sql_i, root, innerrel,
          fpinfo->make_innerrel_subquery,
          ignore_rel, ignore_conds, params_list);





   if (outerrel_is_target)
   {
    Assert(fpinfo->jointype == JOIN_INNER);
    Assert(fpinfo->joinclauses == NIL);
    appendBinaryStringInfo(buf, join_sql_i.data, join_sql_i.len);
    return;
   }
  }


  Assert(!outerrel_is_target && !innerrel_is_target);






  appendStringInfo(buf, "(%s %s JOIN %s ON ", join_sql_o.data,
       get_jointype_name(fpinfo->jointype), join_sql_i.data);


  if (fpinfo->joinclauses)
  {
   deparse_expr_cxt context;

   context.buf = buf;
   context.foreignrel = foreignrel;
   context.scanrel = foreignrel;
   context.root = root;
   context.params_list = params_list;

   appendStringInfoChar(buf, '(');
   appendConditions(fpinfo->joinclauses, &context);
   appendStringInfoChar(buf, ')');
  }
  else
   appendStringInfoString(buf, "(TRUE)");


  appendStringInfoChar(buf, ')');
 }
 else
 {
  RangeTblEntry *rte = planner_rt_fetch(foreignrel->relid, root);





  Relation rel = table_open(rte->relid, NoLock);

  deparseRelation(buf, rel);






  if (use_alias)
   appendStringInfo(buf, " %s%d", REL_ALIAS_PREFIX, foreignrel->relid);

  table_close(rel, NoLock);
 }
}
