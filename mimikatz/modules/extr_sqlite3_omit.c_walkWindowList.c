
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pFilter; int pPartition; int pOrderBy; struct TYPE_3__* pNextWin; } ;
typedef TYPE_1__ Window ;
typedef int Walker ;


 int WRC_Abort ;
 int WRC_Continue ;
 scalar_t__ sqlite3WalkExpr (int *,int ) ;
 scalar_t__ sqlite3WalkExprList (int *,int ) ;

__attribute__((used)) static int walkWindowList(Walker *pWalker, Window *pList){
  Window *pWin;
  for(pWin=pList; pWin; pWin=pWin->pNextWin){
    if( sqlite3WalkExprList(pWalker, pWin->pOrderBy) ) return WRC_Abort;
    if( sqlite3WalkExprList(pWalker, pWin->pPartition) ) return WRC_Abort;
    if( sqlite3WalkExpr(pWalker, pWin->pFilter) ) return WRC_Abort;
  }
  return WRC_Continue;
}
