
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct SrcList_item {TYPE_2__* pSelect; } ;
typedef int sqlite3 ;
struct TYPE_7__ {TYPE_1__* pSrc; struct TYPE_7__* pPrior; void* pWhere; void* pHaving; int pOrderBy; int pGroupBy; int pEList; } ;
struct TYPE_6__ {int nSrc; struct SrcList_item* a; } ;
typedef TYPE_1__ SrcList ;
typedef TYPE_2__ Select ;
typedef int ExprList ;


 scalar_t__ ALWAYS (TYPE_1__*) ;
 int assert (TYPE_1__*) ;
 void* substExpr (int *,void*,int,int *) ;
 int substExprList (int *,int ,int,int *) ;

__attribute__((used)) static void substSelect(
  sqlite3 *db,
  Select *p,
  int iTable,
  ExprList *pEList
){
  SrcList *pSrc;
  struct SrcList_item *pItem;
  int i;
  if( !p ) return;
  substExprList(db, p->pEList, iTable, pEList);
  substExprList(db, p->pGroupBy, iTable, pEList);
  substExprList(db, p->pOrderBy, iTable, pEList);
  p->pHaving = substExpr(db, p->pHaving, iTable, pEList);
  p->pWhere = substExpr(db, p->pWhere, iTable, pEList);
  substSelect(db, p->pPrior, iTable, pEList);
  pSrc = p->pSrc;
  assert( pSrc );
  if( ALWAYS(pSrc) ){
    for(i=pSrc->nSrc, pItem=pSrc->a; i>0; i--, pItem++){
      substSelect(db, pItem->pSelect, iTable, pEList);
    }
  }
}
