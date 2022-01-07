
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int * root; TYPE_2__* foreignrel; int buf; } ;
typedef TYPE_1__ deparse_expr_cxt ;
struct TYPE_15__ {int attrs_used; } ;
struct TYPE_14__ {int relid; } ;
struct TYPE_13__ {int relid; scalar_t__ fdw_private; } ;
typedef int StringInfo ;
typedef int Relation ;
typedef TYPE_2__ RelOptInfo ;
typedef TYPE_3__ RangeTblEntry ;
typedef int PlannerInfo ;
typedef TYPE_4__ PgFdwRelationInfo ;
typedef int List ;


 scalar_t__ IS_JOIN_REL (TYPE_2__*) ;
 scalar_t__ IS_UPPER_REL (TYPE_2__*) ;
 int NoLock ;
 int appendStringInfoString (int ,char*) ;
 int deparseExplicitTargetList (int *,int,int **,TYPE_1__*) ;
 int deparseSubqueryTargetList (TYPE_1__*) ;
 int deparseTargetList (int ,TYPE_3__*,int ,int ,int,int ,int,int **) ;
 TYPE_3__* planner_rt_fetch (int ,int *) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

__attribute__((used)) static void
deparseSelectSql(List *tlist, bool is_subquery, List **retrieved_attrs,
     deparse_expr_cxt *context)
{
 StringInfo buf = context->buf;
 RelOptInfo *foreignrel = context->foreignrel;
 PlannerInfo *root = context->root;
 PgFdwRelationInfo *fpinfo = (PgFdwRelationInfo *) foreignrel->fdw_private;




 appendStringInfoString(buf, "SELECT ");

 if (is_subquery)
 {





  deparseSubqueryTargetList(context);
 }
 else if (IS_JOIN_REL(foreignrel) || IS_UPPER_REL(foreignrel))
 {




  deparseExplicitTargetList(tlist, 0, retrieved_attrs, context);
 }
 else
 {




  RangeTblEntry *rte = planner_rt_fetch(foreignrel->relid, root);





  Relation rel = table_open(rte->relid, NoLock);

  deparseTargetList(buf, rte, foreignrel->relid, rel, 0,
        fpinfo->attrs_used, 0, retrieved_attrs);
  table_close(rel, NoLock);
 }
}
