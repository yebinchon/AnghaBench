
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct HavingToWhereCtx {int * pGroupBy; int ** ppWhere; } ;
typedef int sWalker ;
struct TYPE_5__ {struct HavingToWhereCtx* pHavingCtx; } ;
struct TYPE_6__ {TYPE_1__ u; int xExprCallback; int * pParse; } ;
typedef TYPE_2__ Walker ;
typedef int Parse ;
typedef int ExprList ;
typedef int Expr ;


 int havingToWhereExprCb ;
 int memset (TYPE_2__*,int ,int) ;
 int sqlite3WalkExpr (TYPE_2__*,int *) ;

__attribute__((used)) static void havingToWhere(
  Parse *pParse,
  ExprList *pGroupBy,
  Expr *pHaving,
  Expr **ppWhere
){
  struct HavingToWhereCtx sCtx;
  Walker sWalker;

  sCtx.ppWhere = ppWhere;
  sCtx.pGroupBy = pGroupBy;

  memset(&sWalker, 0, sizeof(sWalker));
  sWalker.pParse = pParse;
  sWalker.xExprCallback = havingToWhereExprCb;
  sWalker.u.pHavingCtx = &sCtx;
  sqlite3WalkExpr(&sWalker, pHaving);
}
