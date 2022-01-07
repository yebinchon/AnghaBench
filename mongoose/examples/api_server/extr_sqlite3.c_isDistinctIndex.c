
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {TYPE_5__* pExpr; } ;
typedef TYPE_2__ WhereTerm ;
typedef int WhereClause ;
struct TYPE_17__ {scalar_t__ op; int iTable; int pRight; int pLeft; int iColumn; } ;
struct TYPE_16__ {int nExpr; TYPE_1__* a; } ;
struct TYPE_15__ {scalar_t__ zName; int nColumn; } ;
struct TYPE_13__ {int pExpr; } ;
typedef int Parse ;
typedef TYPE_3__ Index ;
typedef TYPE_4__ ExprList ;
typedef TYPE_5__ Expr ;
typedef int CollSeq ;
typedef int Bitmask ;


 int BMS ;
 scalar_t__ TK_COLUMN ;
 int WO_EQ ;
 int assert (int) ;
 int findIndexCol (int *,TYPE_4__*,int,TYPE_3__*,int) ;
 TYPE_2__* findTerm (int *,int,int ,int,int ,int ) ;
 int * sqlite3BinaryCompareCollSeq (int *,int ,int ) ;
 int * sqlite3ExprCollSeq (int *,TYPE_5__*) ;
 TYPE_5__* sqlite3ExprSkipCollate (int ) ;
 int testcase (int) ;

__attribute__((used)) static int isDistinctIndex(
  Parse *pParse,
  WhereClause *pWC,
  Index *pIdx,
  int base,
  ExprList *pDistinct,
  int nEqCol
){
  Bitmask mask = 0;
  int i;

  assert( pDistinct!=0 );
  if( pIdx->zName==0 || pDistinct->nExpr>=BMS ) return 0;
  testcase( pDistinct->nExpr==BMS-1 );
  for(i=0; i<pDistinct->nExpr; i++){
    WhereTerm *pTerm;
    Expr *p = sqlite3ExprSkipCollate(pDistinct->a[i].pExpr);
    if( p->op!=TK_COLUMN ) return 0;
    pTerm = findTerm(pWC, p->iTable, p->iColumn, ~(Bitmask)0, WO_EQ, 0);
    if( pTerm ){
      Expr *pX = pTerm->pExpr;
      CollSeq *p1 = sqlite3BinaryCompareCollSeq(pParse, pX->pLeft, pX->pRight);
      CollSeq *p2 = sqlite3ExprCollSeq(pParse, p);
      if( p1==p2 ) continue;
    }
    if( p->iTable!=base ) return 0;
    mask |= (((Bitmask)1) << i);
  }

  for(i=nEqCol; mask && i<pIdx->nColumn; i++){
    int iExpr = findIndexCol(pParse, pDistinct, base, pIdx, i);
    if( iExpr<0 ) break;
    mask &= ~(((Bitmask)1) << iExpr);
  }

  return (mask==0);
}
