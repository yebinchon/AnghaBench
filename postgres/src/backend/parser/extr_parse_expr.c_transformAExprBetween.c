
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int kind; int location; int rexpr; int * lexpr; } ;
typedef int ParseState ;
typedef int Node ;
typedef TYPE_1__ A_Expr ;






 int AEXPR_OP ;
 int AEXPR_PAREN ;
 int AND_EXPR ;
 int Assert (int) ;
 int ERROR ;
 int List ;
 int NIL ;
 int OR_EXPR ;
 int args ;
 int castNode (int,int ) ;
 int * copyObject (int *) ;
 int elog (int ,char*,int) ;
 int emit_precedence_warnings (int *,int,char const*,int *,int *,int ) ;
 scalar_t__ linitial (int) ;
 int list_length (int) ;
 int list_make2 (int *,int *) ;
 scalar_t__ lsecond (int) ;
 scalar_t__ makeA_Expr (int ,int ,int *,int *,int) ;
 scalar_t__ makeBoolExpr (int ,int,int ) ;
 int * makeSimpleA_Expr (int ,char*,int *,int *,int ) ;
 int operator_precedence_group (int *,char const**) ;
 scalar_t__ operator_precedence_warning ;
 int * transformExprRecurse (int *,int *) ;

__attribute__((used)) static Node *
transformAExprBetween(ParseState *pstate, A_Expr *a)
{
 Node *aexpr;
 Node *bexpr;
 Node *cexpr;
 Node *result;
 Node *sub1;
 Node *sub2;
 List *args;


 aexpr = a->lexpr;
 args = castNode(List, a->rexpr);
 Assert(list_length(args) == 2);
 bexpr = (Node *) linitial(args);
 cexpr = (Node *) lsecond(args);

 if (operator_precedence_warning)
 {
  int opgroup;
  const char *opname;

  opgroup = operator_precedence_group((Node *) a, &opname);
  emit_precedence_warnings(pstate, opgroup, opname,
         aexpr, cexpr,
         a->location);


  aexpr = (Node *) makeA_Expr(AEXPR_PAREN, NIL, aexpr, ((void*)0), -1);
  bexpr = (Node *) makeA_Expr(AEXPR_PAREN, NIL, bexpr, ((void*)0), -1);
  cexpr = (Node *) makeA_Expr(AEXPR_PAREN, NIL, cexpr, ((void*)0), -1);
 }
 switch (a->kind)
 {
  case 131:
   args = list_make2(makeSimpleA_Expr(AEXPR_OP, ">=",
              aexpr, bexpr,
              a->location),
         makeSimpleA_Expr(AEXPR_OP, "<=",
              copyObject(aexpr), cexpr,
              a->location));
   result = (Node *) makeBoolExpr(AND_EXPR, args, a->location);
   break;
  case 129:
   args = list_make2(makeSimpleA_Expr(AEXPR_OP, "<",
              aexpr, bexpr,
              a->location),
         makeSimpleA_Expr(AEXPR_OP, ">",
              copyObject(aexpr), cexpr,
              a->location));
   result = (Node *) makeBoolExpr(OR_EXPR, args, a->location);
   break;
  case 130:
   args = list_make2(makeSimpleA_Expr(AEXPR_OP, ">=",
              aexpr, bexpr,
              a->location),
         makeSimpleA_Expr(AEXPR_OP, "<=",
              copyObject(aexpr), cexpr,
              a->location));
   sub1 = (Node *) makeBoolExpr(AND_EXPR, args, a->location);
   args = list_make2(makeSimpleA_Expr(AEXPR_OP, ">=",
              copyObject(aexpr), copyObject(cexpr),
              a->location),
         makeSimpleA_Expr(AEXPR_OP, "<=",
              copyObject(aexpr), copyObject(bexpr),
              a->location));
   sub2 = (Node *) makeBoolExpr(AND_EXPR, args, a->location);
   args = list_make2(sub1, sub2);
   result = (Node *) makeBoolExpr(OR_EXPR, args, a->location);
   break;
  case 128:
   args = list_make2(makeSimpleA_Expr(AEXPR_OP, "<",
              aexpr, bexpr,
              a->location),
         makeSimpleA_Expr(AEXPR_OP, ">",
              copyObject(aexpr), cexpr,
              a->location));
   sub1 = (Node *) makeBoolExpr(OR_EXPR, args, a->location);
   args = list_make2(makeSimpleA_Expr(AEXPR_OP, "<",
              copyObject(aexpr), copyObject(cexpr),
              a->location),
         makeSimpleA_Expr(AEXPR_OP, ">",
              copyObject(aexpr), copyObject(bexpr),
              a->location));
   sub2 = (Node *) makeBoolExpr(OR_EXPR, args, a->location);
   args = list_make2(sub1, sub2);
   result = (Node *) makeBoolExpr(AND_EXPR, args, a->location);
   break;
  default:
   elog(ERROR, "unrecognized A_Expr kind: %d", a->kind);
   result = ((void*)0);
   break;
 }

 return transformExprRecurse(pstate, result);
}
