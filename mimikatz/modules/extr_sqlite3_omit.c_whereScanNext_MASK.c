#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_9__ ;
typedef  struct TYPE_26__   TYPE_8__ ;
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ i16 ;
struct TYPE_19__ {scalar_t__ leftColumn; } ;
struct TYPE_22__ {int leftCursor; int eOperator; TYPE_8__* pExpr; TYPE_1__ u; } ;
typedef  TYPE_4__ WhereTerm ;
struct TYPE_23__ {int k; int iEquiv; int nEquiv; scalar_t__* aiColumn; int* aiCur; int opMask; TYPE_6__* pOrigWC; TYPE_6__* pWC; scalar_t__ zCollName; int /*<<< orphan*/  idxaff; int /*<<< orphan*/  pIdxExpr; } ;
typedef  TYPE_5__ WhereScan ;
struct TYPE_24__ {int nTerm; struct TYPE_24__* pOuter; TYPE_2__* pWInfo; TYPE_4__* a; } ;
typedef  TYPE_6__ WhereClause ;
struct TYPE_27__ {int /*<<< orphan*/  zName; } ;
struct TYPE_26__ {int pLeft; scalar_t__ op; int iTable; scalar_t__ iColumn; struct TYPE_26__* pRight; } ;
struct TYPE_25__ {TYPE_3__* db; } ;
struct TYPE_21__ {TYPE_9__* pDfltColl; } ;
struct TYPE_20__ {TYPE_7__* pParse; } ;
typedef  TYPE_7__ Parse ;
typedef  TYPE_8__ Expr ;
typedef  TYPE_9__ CollSeq ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  EP_FromJoin ; 
 int /*<<< orphan*/  FUNC1 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 scalar_t__ TK_COLUMN ; 
 int WO_EQ ; 
 int WO_EQUIV ; 
 int WO_IS ; 
 int WO_ISNULL ; 
 scalar_t__ XN_EXPR ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_9__* FUNC3 (TYPE_7__*,int,TYPE_8__*) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,int) ; 
 TYPE_8__* FUNC5 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static WhereTerm *FUNC9(WhereScan *pScan){
  int iCur;            /* The cursor on the LHS of the term */
  i16 iColumn;         /* The column on the LHS of the term.  -1 for IPK */
  Expr *pX;            /* An expression being tested */
  WhereClause *pWC;    /* Shorthand for pScan->pWC */
  WhereTerm *pTerm;    /* The term being tested */
  int k = pScan->k;    /* Where to start scanning */

  FUNC2( pScan->iEquiv<=pScan->nEquiv );
  pWC = pScan->pWC;
  while(1){
    iColumn = pScan->aiColumn[pScan->iEquiv-1];
    iCur = pScan->aiCur[pScan->iEquiv-1];
    FUNC2( pWC!=0 );
    do{
      for(pTerm=pWC->a+k; k<pWC->nTerm; k++, pTerm++){
        if( pTerm->leftCursor==iCur
         && pTerm->u.leftColumn==iColumn
         && (iColumn!=XN_EXPR
             || FUNC4(pTerm->pExpr->pLeft,
                                       pScan->pIdxExpr,iCur)==0)
         && (pScan->iEquiv<=1 || !FUNC1(pTerm->pExpr, EP_FromJoin))
        ){
          if( (pTerm->eOperator & WO_EQUIV)!=0
           && pScan->nEquiv<FUNC0(pScan->aiCur)
           && (pX = FUNC5(pTerm->pExpr->pRight))->op==TK_COLUMN
          ){
            int j;
            for(j=0; j<pScan->nEquiv; j++){
              if( pScan->aiCur[j]==pX->iTable
               && pScan->aiColumn[j]==pX->iColumn ){
                  break;
              }
            }
            if( j==pScan->nEquiv ){
              pScan->aiCur[j] = pX->iTable;
              pScan->aiColumn[j] = pX->iColumn;
              pScan->nEquiv++;
            }
          }
          if( (pTerm->eOperator & pScan->opMask)!=0 ){
            /* Verify the affinity and collating sequence match */
            if( pScan->zCollName && (pTerm->eOperator & WO_ISNULL)==0 ){
              CollSeq *pColl;
              Parse *pParse = pWC->pWInfo->pParse;
              pX = pTerm->pExpr;
              if( !FUNC6(pX, pScan->idxaff) ){
                continue;
              }
              FUNC2(pX->pLeft);
              pColl = FUNC3(pParse,
                                                  pX->pLeft, pX->pRight);
              if( pColl==0 ) pColl = pParse->db->pDfltColl;
              if( FUNC7(pColl->zName, pScan->zCollName) ){
                continue;
              }
            }
            if( (pTerm->eOperator & (WO_EQ|WO_IS))!=0
             && (pX = pTerm->pExpr->pRight)->op==TK_COLUMN
             && pX->iTable==pScan->aiCur[0]
             && pX->iColumn==pScan->aiColumn[0]
            ){
              FUNC8( pTerm->eOperator & WO_IS );
              continue;
            }
            pScan->pWC = pWC;
            pScan->k = k+1;
            return pTerm;
          }
        }
      }
      pWC = pWC->pOuter;
      k = 0;
    }while( pWC!=0 );
    if( pScan->iEquiv>=pScan->nEquiv ) break;
    pWC = pScan->pOrigWC;
    k = 0;
    pScan->iEquiv++;
  }
  return 0;
}