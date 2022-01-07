
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ local_conds; int relation_index; int remote_conds; } ;
struct TYPE_10__ {TYPE_1__* reltarget; int relids; scalar_t__ fdw_private; } ;
struct TYPE_9__ {int exprs; } ;
typedef int StringInfo ;
typedef TYPE_2__ RelOptInfo ;
typedef int PlannerInfo ;
typedef TYPE_3__ PgFdwRelationInfo ;
typedef int List ;
typedef scalar_t__ Index ;


 int Assert (int) ;
 scalar_t__ IS_JOIN_REL (TYPE_2__*) ;
 scalar_t__ IS_SIMPLE_REL (TYPE_2__*) ;
 scalar_t__ NIL ;
 int SUBQUERY_COL_ALIAS_PREFIX ;
 int SUBQUERY_REL_ALIAS_PREFIX ;
 int appendStringInfo (int ,char*,int ,int) ;
 int appendStringInfoChar (int ,char) ;
 int appendStringInfoString (int ,char*) ;
 int bms_is_member (scalar_t__,int ) ;
 int deparseFromExprForRel (int ,int *,TYPE_2__*,int,scalar_t__,int **,int **) ;
 int deparseSelectStmtForRel (int ,int *,TYPE_2__*,scalar_t__,int ,scalar_t__,int,int,int,int **,int **) ;
 int list_length (int ) ;

__attribute__((used)) static void
deparseRangeTblRef(StringInfo buf, PlannerInfo *root, RelOptInfo *foreignrel,
       bool make_subquery, Index ignore_rel, List **ignore_conds,
       List **params_list)
{
 PgFdwRelationInfo *fpinfo = (PgFdwRelationInfo *) foreignrel->fdw_private;


 Assert(IS_SIMPLE_REL(foreignrel) || IS_JOIN_REL(foreignrel));

 Assert(fpinfo->local_conds == NIL);


 if (make_subquery)
 {
  List *retrieved_attrs;
  int ncols;






  Assert(ignore_rel == 0 ||
      !bms_is_member(ignore_rel, foreignrel->relids));


  appendStringInfoChar(buf, '(');
  deparseSelectStmtForRel(buf, root, foreignrel, NIL,
        fpinfo->remote_conds, NIL,
        0, 0, 1,
        &retrieved_attrs, params_list);
  appendStringInfoChar(buf, ')');


  appendStringInfo(buf, " %s%d", SUBQUERY_REL_ALIAS_PREFIX,
       fpinfo->relation_index);






  ncols = list_length(foreignrel->reltarget->exprs);
  if (ncols > 0)
  {
   int i;

   appendStringInfoChar(buf, '(');
   for (i = 1; i <= ncols; i++)
   {
    if (i > 1)
     appendStringInfoString(buf, ", ");

    appendStringInfo(buf, "%s%d", SUBQUERY_COL_ALIAS_PREFIX, i);
   }
   appendStringInfoChar(buf, ')');
  }
 }
 else
  deparseFromExprForRel(buf, root, foreignrel, 1, ignore_rel,
         ignore_conds, params_list);
}
