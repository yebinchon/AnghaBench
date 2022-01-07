
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int location; int name; int rexpr; int lexpr; } ;
struct TYPE_11__ {scalar_t__ opresulttype; int args; scalar_t__ opretset; } ;
struct TYPE_10__ {int p_last_srf; } ;
typedef TYPE_1__ ParseState ;
typedef TYPE_2__ OpExpr ;
typedef int Node ;
typedef TYPE_3__ A_Expr ;


 scalar_t__ BOOLOID ;
 int ERRCODE_DATATYPE_MISMATCH ;
 int ERROR ;
 int NodeSetTag (TYPE_2__*,int ) ;
 int T_NullIfExpr ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 scalar_t__ exprType (int *) ;
 scalar_t__ linitial (int ) ;
 scalar_t__ make_op (TYPE_1__*,int ,int *,int *,int ,int ) ;
 int parser_errposition (TYPE_1__*,int ) ;
 int * transformExprRecurse (TYPE_1__*,int ) ;

__attribute__((used)) static Node *
transformAExprNullIf(ParseState *pstate, A_Expr *a)
{
 Node *lexpr = transformExprRecurse(pstate, a->lexpr);
 Node *rexpr = transformExprRecurse(pstate, a->rexpr);
 OpExpr *result;

 result = (OpExpr *) make_op(pstate,
        a->name,
        lexpr,
        rexpr,
        pstate->p_last_srf,
        a->location);




 if (result->opresulttype != BOOLOID)
  ereport(ERROR,
    (errcode(ERRCODE_DATATYPE_MISMATCH),
     errmsg("NULLIF requires = operator to yield boolean"),
     parser_errposition(pstate, a->location)));
 if (result->opretset)
  ereport(ERROR,
    (errcode(ERRCODE_DATATYPE_MISMATCH),

     errmsg("%s must not return a set", "NULLIF"),
     parser_errposition(pstate, a->location)));




 result->opresulttype = exprType((Node *) linitial(result->args));




 NodeSetTag(result, T_NullIfExpr);

 return (Node *) result;
}
