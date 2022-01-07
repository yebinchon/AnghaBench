
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {int ** params_list; TYPE_2__* scanrel; TYPE_2__* foreignrel; int * root; int buf; } ;
typedef TYPE_1__ deparse_expr_cxt ;
struct TYPE_17__ {int * remote_conds; TYPE_2__* outerrel; } ;
struct TYPE_16__ {scalar_t__ fdw_private; } ;
typedef int StringInfo ;
typedef TYPE_2__ RelOptInfo ;
typedef int PlannerInfo ;
typedef TYPE_3__ PgFdwRelationInfo ;
typedef int List ;


 int Assert (int) ;
 scalar_t__ IS_JOIN_REL (TYPE_2__*) ;
 scalar_t__ IS_SIMPLE_REL (TYPE_2__*) ;
 scalar_t__ IS_UPPER_REL (TYPE_2__*) ;
 int appendConditions (int *,TYPE_1__*) ;
 int appendGroupByClause (int *,TYPE_1__*) ;
 int appendLimitClause (TYPE_1__*) ;
 int appendOrderByClause (int *,int,TYPE_1__*) ;
 int appendStringInfoString (int ,char*) ;
 int deparseFromExpr (int *,TYPE_1__*) ;
 int deparseLockingClause (TYPE_1__*) ;
 int deparseSelectSql (int *,int,int **,TYPE_1__*) ;

void
deparseSelectStmtForRel(StringInfo buf, PlannerInfo *root, RelOptInfo *rel,
      List *tlist, List *remote_conds, List *pathkeys,
      bool has_final_sort, bool has_limit, bool is_subquery,
      List **retrieved_attrs, List **params_list)
{
 deparse_expr_cxt context;
 PgFdwRelationInfo *fpinfo = (PgFdwRelationInfo *) rel->fdw_private;
 List *quals;





 Assert(IS_JOIN_REL(rel) || IS_SIMPLE_REL(rel) || IS_UPPER_REL(rel));


 context.buf = buf;
 context.root = root;
 context.foreignrel = rel;
 context.scanrel = IS_UPPER_REL(rel) ? fpinfo->outerrel : rel;
 context.params_list = params_list;


 deparseSelectSql(tlist, is_subquery, retrieved_attrs, &context);






 if (IS_UPPER_REL(rel))
 {
  PgFdwRelationInfo *ofpinfo;

  ofpinfo = (PgFdwRelationInfo *) fpinfo->outerrel->fdw_private;
  quals = ofpinfo->remote_conds;
 }
 else
  quals = remote_conds;


 deparseFromExpr(quals, &context);

 if (IS_UPPER_REL(rel))
 {

  appendGroupByClause(tlist, &context);


  if (remote_conds)
  {
   appendStringInfoString(buf, " HAVING ");
   appendConditions(remote_conds, &context);
  }
 }


 if (pathkeys)
  appendOrderByClause(pathkeys, has_final_sort, &context);


 if (has_limit)
  appendLimitClause(&context);


 deparseLockingClause(&context);
}
