
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pOrderBy; int pGroupBy; int pEList; int pLimit; int pHaving; int pWhere; struct TYPE_3__* pPrior; } ;
typedef TYPE_1__ Select ;


 int heightOfExpr (int ,int*) ;
 int heightOfExprList (int ,int*) ;

__attribute__((used)) static void heightOfSelect(Select *pSelect, int *pnHeight){
  Select *p;
  for(p=pSelect; p; p=p->pPrior){
    heightOfExpr(p->pWhere, pnHeight);
    heightOfExpr(p->pHaving, pnHeight);
    heightOfExpr(p->pLimit, pnHeight);
    heightOfExprList(p->pEList, pnHeight);
    heightOfExprList(p->pGroupBy, pnHeight);
    heightOfExprList(p->pOrderBy, pnHeight);
  }
}
