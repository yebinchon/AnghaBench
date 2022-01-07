
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ p_expr_kind; } ;
typedef TYPE_1__ ParseState ;
typedef scalar_t__ ParseExprKind ;
typedef int Node ;


 int Assert (int) ;
 scalar_t__ EXPR_KIND_NONE ;
 int * transformExprRecurse (TYPE_1__*,int *) ;

Node *
transformExpr(ParseState *pstate, Node *expr, ParseExprKind exprKind)
{
 Node *result;
 ParseExprKind sv_expr_kind;


 Assert(exprKind != EXPR_KIND_NONE);
 sv_expr_kind = pstate->p_expr_kind;
 pstate->p_expr_kind = exprKind;

 result = transformExprRecurse(pstate, expr);

 pstate->p_expr_kind = sv_expr_kind;

 return result;
}
