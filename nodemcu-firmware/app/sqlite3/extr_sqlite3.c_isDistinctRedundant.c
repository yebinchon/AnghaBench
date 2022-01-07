
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int WhereClause ;
struct TYPE_18__ {TYPE_5__* pIndex; } ;
typedef TYPE_3__ Table ;
struct TYPE_22__ {scalar_t__ op; int iTable; scalar_t__ iColumn; } ;
struct TYPE_21__ {int nExpr; TYPE_2__* a; } ;
struct TYPE_20__ {int nKeyCol; struct TYPE_20__* pNext; } ;
struct TYPE_19__ {int nSrc; TYPE_1__* a; } ;
struct TYPE_17__ {int pExpr; } ;
struct TYPE_16__ {int iCursor; TYPE_3__* pTab; } ;
typedef TYPE_4__ SrcList ;
typedef int Parse ;
typedef TYPE_5__ Index ;
typedef TYPE_6__ ExprList ;
typedef TYPE_7__ Expr ;
typedef int Bitmask ;


 int IsUniqueIndex (TYPE_5__*) ;
 scalar_t__ TK_COLUMN ;
 int WO_EQ ;
 scalar_t__ findIndexCol (int *,TYPE_6__*,int,TYPE_5__*,int) ;
 scalar_t__ indexColumnNotNull (TYPE_5__*,int) ;
 TYPE_7__* sqlite3ExprSkipCollate (int ) ;
 scalar_t__ sqlite3WhereFindTerm (int *,int,int,int ,int ,TYPE_5__*) ;

__attribute__((used)) static int isDistinctRedundant(
  Parse *pParse,
  SrcList *pTabList,
  WhereClause *pWC,
  ExprList *pDistinct
){
  Table *pTab;
  Index *pIdx;
  int i;
  int iBase;




  if( pTabList->nSrc!=1 ) return 0;
  iBase = pTabList->a[0].iCursor;
  pTab = pTabList->a[0].pTab;





  for(i=0; i<pDistinct->nExpr; i++){
    Expr *p = sqlite3ExprSkipCollate(pDistinct->a[i].pExpr);
    if( p->op==TK_COLUMN && p->iTable==iBase && p->iColumn<0 ) return 1;
  }
  for(pIdx=pTab->pIndex; pIdx; pIdx=pIdx->pNext){
    if( !IsUniqueIndex(pIdx) ) continue;
    for(i=0; i<pIdx->nKeyCol; i++){
      if( 0==sqlite3WhereFindTerm(pWC, iBase, i, ~(Bitmask)0, WO_EQ, pIdx) ){
        if( findIndexCol(pParse, pDistinct, iBase, pIdx, i)<0 ) break;
        if( indexColumnNotNull(pIdx, i)==0 ) break;
      }
    }
    if( i==pIdx->nKeyCol ){

      return 1;
    }
  }

  return 0;
}
