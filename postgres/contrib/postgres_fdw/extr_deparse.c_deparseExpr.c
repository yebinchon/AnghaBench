
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int deparse_expr_cxt ;
typedef int Var ;
typedef int SubscriptingRef ;
typedef int ScalarArrayOpExpr ;
typedef int RelabelType ;
typedef int Param ;
typedef int OpExpr ;
typedef int NullTest ;
typedef int FuncExpr ;
typedef int Expr ;
typedef int DistinctExpr ;
typedef int Const ;
typedef int BoolExpr ;
typedef int ArrayExpr ;
typedef int Aggref ;


 int ERROR ;
 int deparseAggref (int *,int *) ;
 int deparseArrayExpr (int *,int *) ;
 int deparseBoolExpr (int *,int *) ;
 int deparseConst (int *,int *,int ) ;
 int deparseDistinctExpr (int *,int *) ;
 int deparseFuncExpr (int *,int *) ;
 int deparseNullTest (int *,int *) ;
 int deparseOpExpr (int *,int *) ;
 int deparseParam (int *,int *) ;
 int deparseRelabelType (int *,int *) ;
 int deparseScalarArrayOpExpr (int *,int *) ;
 int deparseSubscriptingRef (int *,int *) ;
 int deparseVar (int *,int *) ;
 int elog (int ,char*,int) ;
 int nodeTag (int *) ;

__attribute__((used)) static void
deparseExpr(Expr *node, deparse_expr_cxt *context)
{
 if (node == ((void*)0))
  return;

 switch (nodeTag(node))
 {
  case 128:
   deparseVar((Var *) node, context);
   break;
  case 137:
   deparseConst((Const *) node, context, 0);
   break;
  case 132:
   deparseParam((Param *) node, context);
   break;
  case 129:
   deparseSubscriptingRef((SubscriptingRef *) node, context);
   break;
  case 135:
   deparseFuncExpr((FuncExpr *) node, context);
   break;
  case 133:
   deparseOpExpr((OpExpr *) node, context);
   break;
  case 136:
   deparseDistinctExpr((DistinctExpr *) node, context);
   break;
  case 130:
   deparseScalarArrayOpExpr((ScalarArrayOpExpr *) node, context);
   break;
  case 131:
   deparseRelabelType((RelabelType *) node, context);
   break;
  case 138:
   deparseBoolExpr((BoolExpr *) node, context);
   break;
  case 134:
   deparseNullTest((NullTest *) node, context);
   break;
  case 139:
   deparseArrayExpr((ArrayExpr *) node, context);
   break;
  case 140:
   deparseAggref((Aggref *) node, context);
   break;
  default:
   elog(ERROR, "unsupported expression type for deparse: %d",
     (int) nodeTag(node));
   break;
 }
}
