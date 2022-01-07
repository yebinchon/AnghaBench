
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_9__ ;
typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_10__ ;


typedef int u32 ;
struct TYPE_19__ {int leftColumn; } ;
struct TYPE_23__ {int leftCursor; int prereqRight; int eOperator; TYPE_9__* pExpr; TYPE_1__ u; } ;
typedef TYPE_5__ WhereTerm ;
struct TYPE_24__ {int nTerm; TYPE_7__* pParse; TYPE_5__* a; struct TYPE_24__* pOuter; } ;
typedef TYPE_6__ WhereClause ;
struct TYPE_27__ {int pLeft; scalar_t__ op; int iTable; int iColumn; int pRight; } ;
struct TYPE_26__ {int* aiColumn; int nColumn; int * azColl; TYPE_3__* pTable; } ;
struct TYPE_25__ {TYPE_4__* db; } ;
struct TYPE_22__ {TYPE_10__* pDfltColl; } ;
struct TYPE_21__ {TYPE_2__* aCol; } ;
struct TYPE_20__ {char affinity; } ;
struct TYPE_18__ {int zName; } ;
typedef TYPE_7__ Parse ;
typedef TYPE_8__ Index ;
typedef TYPE_9__ Expr ;
typedef TYPE_10__ CollSeq ;
typedef int Bitmask ;


 int ArraySize (int*) ;
 scalar_t__ NEVER (int) ;
 scalar_t__ TK_COLUMN ;
 int WO_ALL ;
 int WO_EQ ;
 int WO_EQUIV ;
 int WO_ISNULL ;
 int assert (int) ;
 TYPE_10__* sqlite3BinaryCompareCollSeq (TYPE_7__*,int,int ) ;
 TYPE_9__* sqlite3ExprSkipCollate (int ) ;
 int sqlite3IndexAffinityOk (TYPE_9__*,char) ;
 scalar_t__ sqlite3StrICmp (int ,int ) ;

__attribute__((used)) static WhereTerm *findTerm(
  WhereClause *pWC,
  int iCur,
  int iColumn,
  Bitmask notReady,
  u32 op,
  Index *pIdx
){
  WhereTerm *pTerm;
  WhereTerm *pResult = 0;
  WhereClause *pWCOrig = pWC;
  int j, k;
  Expr *pX;
  Parse *pParse;
  int iOrigCol = iColumn;
  int nEquiv = 2;
  int iEquiv = 2;
  int aEquiv[22];

  assert( iCur>=0 );
  aEquiv[0] = iCur;
  aEquiv[1] = iColumn;
  for(;;){
    for(pWC=pWCOrig; pWC; pWC=pWC->pOuter){
      for(pTerm=pWC->a, k=pWC->nTerm; k; k--, pTerm++){
        if( pTerm->leftCursor==iCur
          && pTerm->u.leftColumn==iColumn
        ){
          if( (pTerm->prereqRight & notReady)==0
           && (pTerm->eOperator & op & WO_ALL)!=0
          ){
            if( iOrigCol>=0 && pIdx && (pTerm->eOperator & WO_ISNULL)==0 ){
              CollSeq *pColl;
              char idxaff;

              pX = pTerm->pExpr;
              pParse = pWC->pParse;
              idxaff = pIdx->pTable->aCol[iOrigCol].affinity;
              if( !sqlite3IndexAffinityOk(pX, idxaff) ){
                continue;
              }





              assert(pX->pLeft);
              pColl = sqlite3BinaryCompareCollSeq(pParse,pX->pLeft,pX->pRight);
              if( pColl==0 ) pColl = pParse->db->pDfltColl;

              for(j=0; pIdx->aiColumn[j]!=iOrigCol; j++){
                if( NEVER(j>=pIdx->nColumn) ) return 0;
              }
              if( sqlite3StrICmp(pColl->zName, pIdx->azColl[j]) ){
                continue;
              }
            }
            if( pTerm->prereqRight==0 && (pTerm->eOperator&WO_EQ)!=0 ){
              pResult = pTerm;
              goto findTerm_success;
            }else if( pResult==0 ){
              pResult = pTerm;
            }
          }
          if( (pTerm->eOperator & WO_EQUIV)!=0
           && nEquiv<ArraySize(aEquiv)
          ){
            pX = sqlite3ExprSkipCollate(pTerm->pExpr->pRight);
            assert( pX->op==TK_COLUMN );
            for(j=0; j<nEquiv; j+=2){
              if( aEquiv[j]==pX->iTable && aEquiv[j+1]==pX->iColumn ) break;
            }
            if( j==nEquiv ){
              aEquiv[j] = pX->iTable;
              aEquiv[j+1] = pX->iColumn;
              nEquiv += 2;
            }
          }
        }
      }
    }
    if( iEquiv>=nEquiv ) break;
    iCur = aEquiv[iEquiv++];
    iColumn = aEquiv[iEquiv++];
  }
findTerm_success:
  return pResult;
}
