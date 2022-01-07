
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int TargetEntry ;
struct TYPE_4__ {int p_next_resno; } ;
typedef TYPE_1__ ParseState ;
typedef scalar_t__ ParseExprKind ;
typedef int Node ;
typedef int Expr ;
typedef int AttrNumber ;


 scalar_t__ EXPR_KIND_UPDATE_SOURCE ;
 char* FigureColname (int *) ;
 scalar_t__ IsA (int *,int ) ;
 int SetToDefault ;
 int * makeTargetEntry (int *,int ,char*,int) ;
 int * transformExpr (TYPE_1__*,int *,scalar_t__) ;

TargetEntry *
transformTargetEntry(ParseState *pstate,
      Node *node,
      Node *expr,
      ParseExprKind exprKind,
      char *colname,
      bool resjunk)
{

 if (expr == ((void*)0))
 {





  if (exprKind == EXPR_KIND_UPDATE_SOURCE && IsA(node, SetToDefault))
   expr = node;
  else
   expr = transformExpr(pstate, node, exprKind);
 }

 if (colname == ((void*)0) && !resjunk)
 {




  colname = FigureColname(node);
 }

 return makeTargetEntry((Expr *) expr,
         (AttrNumber) pstate->p_next_resno++,
         colname,
         resjunk);
}
