
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_14__ ;


typedef void* u16 ;
struct TYPE_17__ {int iOrderByCol; } ;
struct TYPE_18__ {TYPE_2__ x; } ;
struct ExprList_item {TYPE_3__ u; int * pExpr; } ;
struct TYPE_21__ {int nExpr; struct ExprList_item* a; } ;
struct TYPE_20__ {int * pParse; } ;
struct TYPE_19__ {TYPE_14__* pEList; } ;
struct TYPE_16__ {int pExpr; } ;
struct TYPE_15__ {int nExpr; TYPE_1__* a; } ;
typedef TYPE_4__ Select ;
typedef int Parse ;
typedef TYPE_5__ NameContext ;
typedef TYPE_6__ ExprList ;
typedef int Expr ;


 int resolveAsName (int *,TYPE_14__*,int *) ;
 int resolveOutOfRangeError (int *,char const*,int,int) ;
 int resolveRemoveWindows (TYPE_4__*,int *) ;
 scalar_t__ sqlite3ExprCompare (int ,int *,int ,int) ;
 scalar_t__ sqlite3ExprIsInteger (int *,int*) ;
 int * sqlite3ExprSkipCollate (int *) ;
 scalar_t__ sqlite3ResolveExprNames (TYPE_5__*,int *) ;
 int sqlite3ResolveOrderGroupBy (int *,TYPE_4__*,TYPE_6__*,char const*) ;

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
    Expr *pE2 = sqlite3ExprSkipCollate(pE);
    if( zType[0]!='G' ){
      iCol = resolveAsName(pParse, pSelect->pEList, pE2);
      if( iCol>0 ){




        pItem->u.x.iOrderByCol = (u16)iCol;
        continue;
      }
    }
    if( sqlite3ExprIsInteger(pE2, &iCol) ){



      if( iCol<1 || iCol>0xffff ){
        resolveOutOfRangeError(pParse, zType, i+1, nResult);
        return 1;
      }
      pItem->u.x.iOrderByCol = (u16)iCol;
      continue;
    }


    pItem->u.x.iOrderByCol = 0;
    if( sqlite3ResolveExprNames(pNC, pE) ){
      return 1;
    }
    for(j=0; j<pSelect->pEList->nExpr; j++){
      if( sqlite3ExprCompare(0, pE, pSelect->pEList->a[j].pExpr, -1)==0 ){



        resolveRemoveWindows(pSelect, pE);
        pItem->u.x.iOrderByCol = j+1;
      }
    }
  }
  return sqlite3ResolveOrderGroupBy(pParse, pSelect, pOrderBy, zType);
}
