
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int XmlSerialize ;
typedef int XmlExpr ;
typedef int Value ;
typedef int TypeCast ;
struct TYPE_18__ {int location; int val; } ;
struct TYPE_17__ {int kind; int * lexpr; } ;
struct TYPE_16__ {int * arg; } ;
struct TYPE_15__ {int * arg; int argisrow; int location; } ;
struct TYPE_14__ {int location; } ;
typedef int SubLink ;
typedef TYPE_1__ SetToDefault ;
typedef int SQLValueFunction ;
typedef int RowExpr ;
typedef int ParseState ;
typedef int ParamRef ;
typedef TYPE_2__ NullTest ;
typedef int Node ;
typedef TYPE_3__ NamedArgExpr ;
typedef int MultiAssignRef ;
typedef int MinMaxExpr ;
typedef int GroupingFunc ;
typedef int FuncCall ;
typedef int Expr ;
typedef int CurrentOfExpr ;
typedef int ColumnRef ;
typedef int CollateClause ;
typedef int CoalesceExpr ;
typedef int CaseExpr ;
typedef int BooleanTest ;
typedef int BoolExpr ;
typedef int A_Indirection ;
typedef TYPE_4__ A_Expr ;
typedef TYPE_5__ A_Const ;
typedef int A_ArrayExpr ;
 int ERRCODE_SYNTAX_ERROR ;
 int ERROR ;
 int InvalidOid ;
 int PREC_GROUP_POSTFIX_IS ;
 int check_stack_depth () ;
 int elog (int ,char*,int) ;
 int emit_precedence_warnings (int *,int ,char*,int *,int *,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int exprType (int *) ;
 scalar_t__ make_const (int *,int *,int ) ;
 int nodeTag (int *) ;
 int operator_precedence_warning ;
 int parser_errposition (int *,int ) ;
 int * transformAExprBetween (int *,TYPE_4__*) ;
 int * transformAExprDistinct (int *,TYPE_4__*) ;
 int * transformAExprIn (int *,TYPE_4__*) ;
 int * transformAExprNullIf (int *,TYPE_4__*) ;
 int * transformAExprOf (int *,TYPE_4__*) ;
 int * transformAExprOp (int *,TYPE_4__*) ;
 int * transformAExprOpAll (int *,TYPE_4__*) ;
 int * transformAExprOpAny (int *,TYPE_4__*) ;
 int * transformArrayExpr (int *,int *,int ,int ,int) ;
 int * transformBoolExpr (int *,int *) ;
 int * transformBooleanTest (int *,int *) ;
 int * transformCaseExpr (int *,int *) ;
 int * transformCoalesceExpr (int *,int *) ;
 int * transformCollateClause (int *,int *) ;
 int * transformColumnRef (int *,int *) ;
 int * transformCurrentOfExpr (int *,int *) ;
 int * transformFuncCall (int *,int *) ;
 int * transformGroupingFunc (int *,int *) ;
 int * transformIndirection (int *,int *) ;
 int * transformMinMaxExpr (int *,int *) ;
 int * transformMultiAssignRef (int *,int *) ;
 int * transformParamRef (int *,int *) ;
 int * transformRowExpr (int *,int *,int) ;
 int * transformSQLValueFunction (int *,int *) ;
 int * transformSubLink (int *,int *) ;
 int * transformTypeCast (int *,int *) ;
 int * transformXmlExpr (int *,int *) ;
 int * transformXmlSerialize (int *,int *) ;
 int type_is_rowtype (int ) ;

__attribute__((used)) static Node *
transformExprRecurse(ParseState *pstate, Node *expr)
{
 Node *result;

 if (expr == ((void*)0))
  return ((void*)0);


 check_stack_depth();

 switch (nodeTag(expr))
 {
  case 144:
   result = transformColumnRef(pstate, (ColumnRef *) expr);
   break;

  case 136:
   result = transformParamRef(pstate, (ParamRef *) expr);
   break;

  case 153:
   {
    A_Const *con = (A_Const *) expr;
    Value *val = &con->val;

    result = (Node *) make_const(pstate, val, con->location);
    break;
   }

  case 151:
   result = transformIndirection(pstate, (A_Indirection *) expr);
   break;

  case 154:
   result = transformArrayExpr(pstate, (A_ArrayExpr *) expr,
          InvalidOid, InvalidOid, -1);
   break;

  case 131:
   result = transformTypeCast(pstate, (TypeCast *) expr);
   break;

  case 145:
   result = transformCollateClause(pstate, (CollateClause *) expr);
   break;

  case 152:
   {
    A_Expr *a = (A_Expr *) expr;

    switch (a->kind)
    {
     case 159:
      result = transformAExprOp(pstate, a);
      break;
     case 157:
      result = transformAExprOpAny(pstate, a);
      break;
     case 158:
      result = transformAExprOpAll(pstate, a);
      break;
     case 168:
     case 162:
      result = transformAExprDistinct(pstate, a);
      break;
     case 161:
      result = transformAExprNullIf(pstate, a);
      break;
     case 160:
      result = transformAExprOf(pstate, a);
      break;
     case 166:
      result = transformAExprIn(pstate, a);
      break;
     case 165:
     case 167:
     case 155:

      result = transformAExprOp(pstate, a);
      break;
     case 170:
     case 164:
     case 169:
     case 163:
      result = transformAExprBetween(pstate, a);
      break;
     case 156:
      result = transformExprRecurse(pstate, a->lexpr);
      break;
     default:
      elog(ERROR, "unrecognized A_Expr kind: %d", a->kind);
      result = ((void*)0);
      break;
    }
    break;
   }

  case 150:
   result = transformBoolExpr(pstate, (BoolExpr *) expr);
   break;

  case 142:
   result = transformFuncCall(pstate, (FuncCall *) expr);
   break;

  case 139:
   result = transformMultiAssignRef(pstate, (MultiAssignRef *) expr);
   break;

  case 141:
   result = transformGroupingFunc(pstate, (GroupingFunc *) expr);
   break;

  case 138:
   {
    NamedArgExpr *na = (NamedArgExpr *) expr;

    na->arg = (Expr *) transformExprRecurse(pstate, (Node *) na->arg);
    result = expr;
    break;
   }

  case 132:
   result = transformSubLink(pstate, (SubLink *) expr);
   break;

  case 148:
   result = transformCaseExpr(pstate, (CaseExpr *) expr);
   break;

  case 135:
   result = transformRowExpr(pstate, (RowExpr *) expr, 0);
   break;

  case 146:
   result = transformCoalesceExpr(pstate, (CoalesceExpr *) expr);
   break;

  case 140:
   result = transformMinMaxExpr(pstate, (MinMaxExpr *) expr);
   break;

  case 134:
   result = transformSQLValueFunction(pstate,
              (SQLValueFunction *) expr);
   break;

  case 129:
   result = transformXmlExpr(pstate, (XmlExpr *) expr);
   break;

  case 128:
   result = transformXmlSerialize(pstate, (XmlSerialize *) expr);
   break;

  case 137:
   {
    NullTest *n = (NullTest *) expr;

    if (operator_precedence_warning)
     emit_precedence_warnings(pstate, PREC_GROUP_POSTFIX_IS, "IS",
            (Node *) n->arg, ((void*)0),
            n->location);

    n->arg = (Expr *) transformExprRecurse(pstate, (Node *) n->arg);

    n->argisrow = type_is_rowtype(exprType((Node *) n->arg));
    result = expr;
    break;
   }

  case 149:
   result = transformBooleanTest(pstate, (BooleanTest *) expr);
   break;

  case 143:
   result = transformCurrentOfExpr(pstate, (CurrentOfExpr *) expr);
   break;





  case 133:
   ereport(ERROR,
     (errcode(ERRCODE_SYNTAX_ERROR),
      errmsg("DEFAULT is not allowed in this context"),
      parser_errposition(pstate,
          ((SetToDefault *) expr)->location)));
   break;
  case 147:
  case 130:
   {
    result = (Node *) expr;
    break;
   }

  default:

   elog(ERROR, "unrecognized node type: %d", (int) nodeTag(expr));
   result = ((void*)0);
   break;
 }

 return result;
}
