
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_46__ TYPE_9__ ;
typedef struct TYPE_45__ TYPE_8__ ;
typedef struct TYPE_44__ TYPE_7__ ;
typedef struct TYPE_43__ TYPE_6__ ;
typedef struct TYPE_42__ TYPE_5__ ;
typedef struct TYPE_41__ TYPE_4__ ;
typedef struct TYPE_40__ TYPE_3__ ;
typedef struct TYPE_39__ TYPE_2__ ;
typedef struct TYPE_38__ TYPE_1__ ;
typedef struct TYPE_37__ TYPE_14__ ;
typedef struct TYPE_36__ TYPE_13__ ;
typedef struct TYPE_35__ TYPE_12__ ;
typedef struct TYPE_34__ TYPE_11__ ;
typedef struct TYPE_33__ TYPE_10__ ;


struct InLoop {int iCur; int iBase; int nPrefix; int eEndLoopOp; int addrInTop; } ;
struct TYPE_46__ {int mallocFailed; } ;
typedef TYPE_9__ sqlite3 ;
struct TYPE_33__ {TYPE_14__* pExpr; } ;
typedef TYPE_10__ WhereTerm ;
struct TYPE_39__ {TYPE_1__* pIndex; } ;
struct TYPE_40__ {TYPE_2__ btree; } ;
struct TYPE_34__ {int wsFlags; int nLTerm; TYPE_10__** aLTerm; TYPE_3__ u; } ;
typedef TYPE_11__ WhereLoop ;
struct TYPE_45__ {int nIn; struct InLoop* aInLoop; } ;
struct TYPE_44__ {TYPE_8__ in; } ;
struct TYPE_35__ {TYPE_7__ u; int addrNxt; TYPE_11__* pWLoop; } ;
typedef TYPE_12__ WhereLevel ;
typedef int Vdbe ;
struct TYPE_43__ {TYPE_5__* pSelect; } ;
struct TYPE_42__ {TYPE_4__* pEList; } ;
struct TYPE_41__ {int nExpr; } ;
struct TYPE_38__ {scalar_t__* aSortOrder; } ;
struct TYPE_37__ {scalar_t__ op; int flags; int iTable; TYPE_6__ x; int pRight; } ;
struct TYPE_36__ {TYPE_9__* db; int * pVdbe; } ;
typedef TYPE_13__ Parse ;
typedef TYPE_14__ Expr ;


 int EP_xIsSelect ;
 int IN_INDEX_INDEX_DESC ;
 int IN_INDEX_LOOP ;
 int IN_INDEX_NOOP ;
 int IN_INDEX_ROWID ;
 int OP_Column ;
 int OP_IsNull ;
 int OP_Last ;
 int OP_Next ;
 int OP_Noop ;
 int OP_Null ;
 int OP_Prev ;
 int OP_Rewind ;
 int OP_Rowid ;
 scalar_t__ TK_EQ ;
 scalar_t__ TK_IN ;
 scalar_t__ TK_IS ;
 scalar_t__ TK_ISNULL ;
 int VdbeCoverage (int *) ;
 int VdbeCoverageIf (int *,int) ;
 int WHERE_IN_ABLE ;
 int WHERE_IN_EARLYOUT ;
 int WHERE_MULTI_OR ;
 int WHERE_VIRTUALTABLE ;
 int assert (int) ;
 int disableTerm (TYPE_12__*,TYPE_10__*) ;
 TYPE_14__* removeUnindexableInClauseTerms (TYPE_13__*,int,TYPE_11__*,TYPE_14__*) ;
 int sqlite3DbFree (TYPE_9__*,int*) ;
 scalar_t__ sqlite3DbMallocZero (TYPE_9__*,int) ;
 struct InLoop* sqlite3DbReallocOrFree (TYPE_9__*,struct InLoop*,int) ;
 int sqlite3ExprCodeTarget (TYPE_13__*,int ,int) ;
 int sqlite3ExprDelete (TYPE_9__*,TYPE_14__*) ;
 int sqlite3FindInIndex (TYPE_13__*,TYPE_14__*,int ,int ,int*,int*) ;
 int sqlite3VdbeAddOp1 (int *,int ,int) ;
 int sqlite3VdbeAddOp2 (int *,int ,int,int) ;
 int sqlite3VdbeAddOp3 (int *,int ,int,int,int) ;
 int sqlite3VdbeMakeLabel (TYPE_13__*) ;
 int testcase (int) ;

__attribute__((used)) static int codeEqualityTerm(
  Parse *pParse,
  WhereTerm *pTerm,
  WhereLevel *pLevel,
  int iEq,
  int bRev,
  int iTarget
){
  Expr *pX = pTerm->pExpr;
  Vdbe *v = pParse->pVdbe;
  int iReg;

  assert( pLevel->pWLoop->aLTerm[iEq]==pTerm );
  assert( iTarget>0 );
  if( pX->op==TK_EQ || pX->op==TK_IS ){
    iReg = sqlite3ExprCodeTarget(pParse, pX->pRight, iTarget);
  }else if( pX->op==TK_ISNULL ){
    iReg = iTarget;
    sqlite3VdbeAddOp2(v, OP_Null, 0, iReg);

  }else{
    int eType = IN_INDEX_NOOP;
    int iTab;
    struct InLoop *pIn;
    WhereLoop *pLoop = pLevel->pWLoop;
    int i;
    int nEq = 0;
    int *aiMap = 0;

    if( (pLoop->wsFlags & WHERE_VIRTUALTABLE)==0
      && pLoop->u.btree.pIndex!=0
      && pLoop->u.btree.pIndex->aSortOrder[iEq]
    ){
      testcase( iEq==0 );
      testcase( bRev );
      bRev = !bRev;
    }
    assert( pX->op==TK_IN );
    iReg = iTarget;

    for(i=0; i<iEq; i++){
      if( pLoop->aLTerm[i] && pLoop->aLTerm[i]->pExpr==pX ){
        disableTerm(pLevel, pTerm);
        return iTarget;
      }
    }
    for(i=iEq;i<pLoop->nLTerm; i++){
      assert( pLoop->aLTerm[i]!=0 );
      if( pLoop->aLTerm[i]->pExpr==pX ) nEq++;
    }

    iTab = 0;
    if( (pX->flags & EP_xIsSelect)==0 || pX->x.pSelect->pEList->nExpr==1 ){
      eType = sqlite3FindInIndex(pParse, pX, IN_INDEX_LOOP, 0, 0, &iTab);
    }else{
      sqlite3 *db = pParse->db;
      pX = removeUnindexableInClauseTerms(pParse, iEq, pLoop, pX);

      if( !db->mallocFailed ){
        aiMap = (int*)sqlite3DbMallocZero(pParse->db, sizeof(int)*nEq);
        eType = sqlite3FindInIndex(pParse, pX, IN_INDEX_LOOP, 0, aiMap, &iTab);
        pTerm->pExpr->iTable = iTab;
      }
      sqlite3ExprDelete(db, pX);
      pX = pTerm->pExpr;
    }

    if( eType==IN_INDEX_INDEX_DESC ){
      testcase( bRev );
      bRev = !bRev;
    }
    sqlite3VdbeAddOp2(v, bRev ? OP_Last : OP_Rewind, iTab, 0);
    VdbeCoverageIf(v, bRev);
    VdbeCoverageIf(v, !bRev);
    assert( (pLoop->wsFlags & WHERE_MULTI_OR)==0 );

    pLoop->wsFlags |= WHERE_IN_ABLE;
    if( pLevel->u.in.nIn==0 ){
      pLevel->addrNxt = sqlite3VdbeMakeLabel(pParse);
    }

    i = pLevel->u.in.nIn;
    pLevel->u.in.nIn += nEq;
    pLevel->u.in.aInLoop =
       sqlite3DbReallocOrFree(pParse->db, pLevel->u.in.aInLoop,
                              sizeof(pLevel->u.in.aInLoop[0])*pLevel->u.in.nIn);
    pIn = pLevel->u.in.aInLoop;
    if( pIn ){
      int iMap = 0;
      pIn += i;
      for(i=iEq;i<pLoop->nLTerm; i++){
        if( pLoop->aLTerm[i]->pExpr==pX ){
          int iOut = iReg + i - iEq;
          if( eType==IN_INDEX_ROWID ){
            pIn->addrInTop = sqlite3VdbeAddOp2(v, OP_Rowid, iTab, iOut);
          }else{
            int iCol = aiMap ? aiMap[iMap++] : 0;
            pIn->addrInTop = sqlite3VdbeAddOp3(v,OP_Column,iTab, iCol, iOut);
          }
          sqlite3VdbeAddOp1(v, OP_IsNull, iOut); VdbeCoverage(v);
          if( i==iEq ){
            pIn->iCur = iTab;
            pIn->eEndLoopOp = bRev ? OP_Prev : OP_Next;
            if( iEq>0 && (pLoop->wsFlags & WHERE_VIRTUALTABLE)==0 ){
              pIn->iBase = iReg - i;
              pIn->nPrefix = i;
              pLoop->wsFlags |= WHERE_IN_EARLYOUT;
            }else{
              pIn->nPrefix = 0;
            }
          }else{
            pIn->eEndLoopOp = OP_Noop;
          }
          pIn++;
        }
      }
    }else{
      pLevel->u.in.nIn = 0;
    }
    sqlite3DbFree(pParse->db, aiMap);

  }
  disableTerm(pLevel, pTerm);
  return iReg;
}
