
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hasJoinRTEs; int have_non_var_grouping; int in_agg_direct_args; scalar_t__ sublevels_up; int * func_grouped_rels; int groupClauseCommonVars; int * groupClauses; int * qry; int * pstate; } ;
typedef TYPE_1__ check_ungrouped_columns_context ;
typedef int Query ;
typedef int ParseState ;
typedef int Node ;
typedef int List ;


 int NIL ;
 int finalize_grouping_exprs_walker (int *,TYPE_1__*) ;

__attribute__((used)) static void
finalize_grouping_exprs(Node *node, ParseState *pstate, Query *qry,
      List *groupClauses, bool hasJoinRTEs,
      bool have_non_var_grouping)
{
 check_ungrouped_columns_context context;

 context.pstate = pstate;
 context.qry = qry;
 context.hasJoinRTEs = hasJoinRTEs;
 context.groupClauses = groupClauses;
 context.groupClauseCommonVars = NIL;
 context.have_non_var_grouping = have_non_var_grouping;
 context.func_grouped_rels = ((void*)0);
 context.sublevels_up = 0;
 context.in_agg_direct_args = 0;
 finalize_grouping_exprs_walker(node, &context);
}
