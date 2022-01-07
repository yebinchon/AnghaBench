
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int location; int name; int * rexpr; int * lexpr; } ;
typedef int ParseState ;
typedef int Node ;
typedef TYPE_1__ A_Expr ;


 int PREC_GROUP_POSTFIX_OP ;
 int emit_precedence_warnings (int *,int ,int ,int *,int *,int ) ;
 int llast (int ) ;
 scalar_t__ make_scalar_array_op (int *,int ,int,int *,int *,int ) ;
 scalar_t__ operator_precedence_warning ;
 int strVal (int ) ;
 int * transformExprRecurse (int *,int *) ;

__attribute__((used)) static Node *
transformAExprOpAny(ParseState *pstate, A_Expr *a)
{
 Node *lexpr = a->lexpr;
 Node *rexpr = a->rexpr;

 if (operator_precedence_warning)
  emit_precedence_warnings(pstate, PREC_GROUP_POSTFIX_OP,
         strVal(llast(a->name)),
         lexpr, ((void*)0),
         a->location);

 lexpr = transformExprRecurse(pstate, lexpr);
 rexpr = transformExprRecurse(pstate, rexpr);

 return (Node *) make_scalar_array_op(pstate,
           a->name,
           1,
           lexpr,
           rexpr,
           a->location);
}
