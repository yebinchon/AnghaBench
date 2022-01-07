
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ hasSubLinks; } ;
struct TYPE_7__ {int query_level; TYPE_3__* parse; scalar_t__ hasJoinRTEs; } ;
typedef TYPE_1__ PlannerInfo ;
typedef int Node ;
typedef int Expr ;


 int EXPRKIND_QUAL ;
 int EXPRKIND_RTFUNC ;
 int EXPRKIND_RTFUNC_LATERAL ;
 int EXPRKIND_TABLEFUNC ;
 int EXPRKIND_TABLESAMPLE ;
 int EXPRKIND_VALUES ;
 int * SS_process_sublinks (TYPE_1__*,int *,int) ;
 int * SS_replace_correlation_vars (TYPE_1__*,int *) ;
 scalar_t__ canonicalize_qual (int *,int) ;
 int * eval_const_expressions (TYPE_1__*,int *) ;
 int * flatten_join_alias_vars (TYPE_3__*,int *) ;
 scalar_t__ make_ands_implicit (int *) ;
 int pprint (int *) ;
 int printf (char*) ;

__attribute__((used)) static Node *
preprocess_expression(PlannerInfo *root, Node *expr, int kind)
{





 if (expr == ((void*)0))
  return ((void*)0);
 if (root->hasJoinRTEs &&
  !(kind == EXPRKIND_RTFUNC ||
    kind == EXPRKIND_VALUES ||
    kind == EXPRKIND_TABLESAMPLE ||
    kind == EXPRKIND_TABLEFUNC))
  expr = flatten_join_alias_vars(root->parse, expr);
 if (!(kind == EXPRKIND_RTFUNC ||
    (kind == EXPRKIND_RTFUNC_LATERAL && !root->hasJoinRTEs)))
  expr = eval_const_expressions(root, expr);




 if (kind == EXPRKIND_QUAL)
 {
  expr = (Node *) canonicalize_qual((Expr *) expr, 0);





 }


 if (root->parse->hasSubLinks)
  expr = SS_process_sublinks(root, expr, (kind == EXPRKIND_QUAL));







 if (root->query_level > 1)
  expr = SS_replace_correlation_vars(root, expr);







 if (kind == EXPRKIND_QUAL)
  expr = (Node *) make_ands_implicit((Expr *) expr);

 return expr;
}
