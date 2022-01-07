
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


typedef void* u16 ;
struct ExprList_item {int iOrderByCol; int * pExpr; } ;
struct TYPE_16__ {int nExpr; struct ExprList_item* a; } ;
struct TYPE_15__ {int * pParse; } ;
struct TYPE_14__ {TYPE_11__* pEList; } ;
struct TYPE_13__ {int pExpr; } ;
struct TYPE_12__ {int nExpr; TYPE_1__* a; } ;
typedef TYPE_2__ Select ;
typedef int Parse ;
typedef TYPE_3__ NameContext ;
typedef TYPE_4__ ExprList ;
typedef int Expr ;


 int resolveAsName (int *,TYPE_11__*,int *) ;
 int resolveOutOfRangeError (int *,char const*,int,int) ;
 scalar_t__ sqlite3ExprCompare (int *,int ) ;
 scalar_t__ sqlite3ExprIsInteger (int ,int*) ;
 int sqlite3ExprSkipCollate (int *) ;
 scalar_t__ sqlite3ResolveExprNames (TYPE_3__*,int *) ;
 int sqlite3ResolveOrderGroupBy (int *,TYPE_2__*,TYPE_4__*,char const*) ;

__attribute__((used)) static int resolveOrderGroupBy(
  NameContext *pNC,
  Select *pSelect,
  ExprList *pOrderBy,
  const char *zType
){
  int i, j;
  int iCol;
  struct ExprList_item *pItem;
  Parse *pParse;
  int nResult;

  if( pOrderBy==0 ) return 0;
  nResult = pSelect->pEList->nExpr;
  pParse = pNC->pParse;
  for(i=0, pItem=pOrderBy->a; i<pOrderBy->nExpr; i++, pItem++){
    Expr *pE = pItem->pExpr;
    iCol = resolveAsName(pParse, pSelect->pEList, pE);
    if( iCol>0 ){




      pItem->iOrderByCol = (u16)iCol;
      continue;
    }
    if( sqlite3ExprIsInteger(sqlite3ExprSkipCollate(pE), &iCol) ){



      if( iCol<1 || iCol>0xffff ){
        resolveOutOfRangeError(pParse, zType, i+1, nResult);
        return 1;
      }
      pItem->iOrderByCol = (u16)iCol;
      continue;
    }


    pItem->iOrderByCol = 0;
    if( sqlite3ResolveExprNames(pNC, pE) ){
      return 1;
    }
    for(j=0; j<pSelect->pEList->nExpr; j++){
      if( sqlite3ExprCompare(pE, pSelect->pEList->a[j].pExpr)==0 ){
        pItem->iOrderByCol = j+1;
      }
    }
  }
  return sqlite3ResolveOrderGroupBy(pParse, pSelect, pOrderBy, zType);
}
