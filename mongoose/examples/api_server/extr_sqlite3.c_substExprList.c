
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int sqlite3 ;
struct TYPE_7__ {int nExpr; TYPE_1__* a; } ;
struct TYPE_6__ {int pExpr; } ;
typedef TYPE_2__ ExprList ;


 int substExpr (int *,int ,int,TYPE_2__*) ;

__attribute__((used)) static void substExprList(
  sqlite3 *db,
  ExprList *pList,
  int iTable,
  ExprList *pEList
){
  int i;
  if( pList==0 ) return;
  for(i=0; i<pList->nExpr; i++){
    pList->a[i].pExpr = substExpr(db, pList->a[i].pExpr, iTable, pEList);
  }
}
