
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_20__ {scalar_t__ eType; scalar_t__ eStart; scalar_t__ eEnd; int nBufferCol; int regPart; int iEphCsr; TYPE_7__* pOrderBy; TYPE_7__* pPartition; } ;
typedef TYPE_4__ Window ;
typedef int WhereInfo ;
typedef int Vdbe ;
struct TYPE_23__ {int nExpr; } ;
struct TYPE_22__ {int nMem; } ;
struct TYPE_21__ {TYPE_3__* pSrc; TYPE_4__* pWin; } ;
struct TYPE_19__ {TYPE_2__* a; } ;
struct TYPE_18__ {int iCursor; TYPE_1__* pTab; } ;
struct TYPE_17__ {int nCol; } ;
typedef TYPE_5__ Select ;
typedef TYPE_6__ Parse ;
typedef int KeyInfo ;
typedef TYPE_7__ ExprList ;


 int OP_Blob ;
 int OP_Column ;
 int OP_Compare ;
 int OP_Copy ;
 int OP_Gosub ;
 int OP_Goto ;
 int OP_Insert ;
 int OP_Jump ;
 int OP_MakeRecord ;
 int OP_NewRowid ;
 int OP_Next ;
 int OP_ResetSorter ;
 int OP_Rewind ;
 int P4_KEYINFO ;
 scalar_t__ TK_CURRENT ;
 scalar_t__ TK_RANGE ;
 scalar_t__ TK_UNBOUNDED ;
 int VdbeCoverage (int *) ;
 int VdbeCoverageEqNe (int *) ;
 int assert (int) ;
 int * sqlite3GetVdbe (TYPE_6__*) ;
 int * sqlite3KeyInfoFromExprList (TYPE_6__*,TYPE_7__*,int ,int ) ;
 int sqlite3VdbeAddOp0 (int *,int ) ;
 int sqlite3VdbeAddOp1 (int *,int ,int) ;
 int sqlite3VdbeAddOp2 (int *,int ,int,int) ;
 int sqlite3VdbeAddOp3 (int *,int ,int,int,int) ;
 int sqlite3VdbeAppendP4 (int *,void*,int ) ;
 int sqlite3VdbeCurrentAddr (int *) ;
 int sqlite3VdbeJumpHere (int *,int) ;
 int sqlite3WhereEnd (int *) ;
 int windowAggFinal (TYPE_6__*,TYPE_4__*,int) ;
 int windowAggStep (TYPE_6__*,TYPE_4__*,int,int ,int,int ) ;

__attribute__((used)) static void windowCodeDefaultStep(
  Parse *pParse,
  Select *p,
  WhereInfo *pWInfo,
  int regGosub,
  int addrGosub
){
  Window *pMWin = p->pWin;
  Vdbe *v = sqlite3GetVdbe(pParse);
  int k;
  int iSubCsr = p->pSrc->a[0].iCursor;
  int nSub = p->pSrc->a[0].pTab->nCol;
  int reg = pParse->nMem+1;
  int regRecord = reg+nSub;
  int regRowid = regRecord+1;
  int addr;
  ExprList *pPart = pMWin->pPartition;
  ExprList *pOrderBy = pMWin->pOrderBy;

  assert( pMWin->eType==TK_RANGE
      || (pMWin->eStart==TK_UNBOUNDED && pMWin->eEnd==TK_CURRENT)
  );

  assert( (pMWin->eStart==TK_UNBOUNDED && pMWin->eEnd==TK_CURRENT)
       || (pMWin->eStart==TK_UNBOUNDED && pMWin->eEnd==TK_UNBOUNDED)
       || (pMWin->eStart==TK_CURRENT && pMWin->eEnd==TK_CURRENT)
       || (pMWin->eStart==TK_CURRENT && pMWin->eEnd==TK_UNBOUNDED && !pOrderBy)
  );

  if( pMWin->eEnd==TK_UNBOUNDED ){
    pOrderBy = 0;
  }

  pParse->nMem += nSub + 2;



  for(k=0; k<nSub; k++){
    sqlite3VdbeAddOp3(v, OP_Column, iSubCsr, k, reg+k);
  }


  if( pPart || pOrderBy ){
    int nPart = (pPart ? pPart->nExpr : 0);
    int addrGoto = 0;
    int addrJump = 0;
    int nPeer = (pOrderBy ? pOrderBy->nExpr : 0);

    if( pPart ){
      int regNewPart = reg + pMWin->nBufferCol;
      KeyInfo *pKeyInfo = sqlite3KeyInfoFromExprList(pParse, pPart, 0, 0);
      addr = sqlite3VdbeAddOp3(v, OP_Compare, regNewPart, pMWin->regPart,nPart);
      sqlite3VdbeAppendP4(v, (void*)pKeyInfo, P4_KEYINFO);
      addrJump = sqlite3VdbeAddOp3(v, OP_Jump, addr+2, 0, addr+2);
      VdbeCoverageEqNe(v);
      windowAggFinal(pParse, pMWin, 1);
      if( pOrderBy ){
        addrGoto = sqlite3VdbeAddOp0(v, OP_Goto);
      }
    }

    if( pOrderBy ){
      int regNewPeer = reg + pMWin->nBufferCol + nPart;
      int regPeer = pMWin->regPart + nPart;

      if( addrJump ) sqlite3VdbeJumpHere(v, addrJump);
      if( pMWin->eType==TK_RANGE ){
        KeyInfo *pKeyInfo = sqlite3KeyInfoFromExprList(pParse, pOrderBy, 0, 0);
        addr = sqlite3VdbeAddOp3(v, OP_Compare, regNewPeer, regPeer, nPeer);
        sqlite3VdbeAppendP4(v, (void*)pKeyInfo, P4_KEYINFO);
        addrJump = sqlite3VdbeAddOp3(v, OP_Jump, addr+2, 0, addr+2);
        VdbeCoverage(v);
      }else{
        addrJump = 0;
      }
      windowAggFinal(pParse, pMWin, pMWin->eStart==TK_CURRENT);
      if( addrGoto ) sqlite3VdbeJumpHere(v, addrGoto);
    }

    sqlite3VdbeAddOp2(v, OP_Rewind, pMWin->iEphCsr,sqlite3VdbeCurrentAddr(v)+3);
    VdbeCoverage(v);
    sqlite3VdbeAddOp2(v, OP_Gosub, regGosub, addrGosub);
    sqlite3VdbeAddOp2(v, OP_Next, pMWin->iEphCsr, sqlite3VdbeCurrentAddr(v)-1);
    VdbeCoverage(v);

    sqlite3VdbeAddOp1(v, OP_ResetSorter, pMWin->iEphCsr);
    sqlite3VdbeAddOp3(
        v, OP_Copy, reg+pMWin->nBufferCol, pMWin->regPart, nPart+nPeer-1
    );

    if( addrJump ) sqlite3VdbeJumpHere(v, addrJump);
  }


  windowAggStep(pParse, pMWin, -1, 0, reg, 0);


  if( pMWin->nBufferCol>0 ){
    sqlite3VdbeAddOp3(v, OP_MakeRecord, reg, pMWin->nBufferCol, regRecord);
  }else{
    sqlite3VdbeAddOp2(v, OP_Blob, 0, regRecord);
    sqlite3VdbeAppendP4(v, (void*)"", 0);
  }
  sqlite3VdbeAddOp2(v, OP_NewRowid, pMWin->iEphCsr, regRowid);
  sqlite3VdbeAddOp3(v, OP_Insert, pMWin->iEphCsr, regRecord, regRowid);


  sqlite3WhereEnd(pWInfo);

  windowAggFinal(pParse, pMWin, 1);
  sqlite3VdbeAddOp2(v, OP_Rewind, pMWin->iEphCsr,sqlite3VdbeCurrentAddr(v)+3);
  VdbeCoverage(v);
  sqlite3VdbeAddOp2(v, OP_Gosub, regGosub, addrGosub);
  sqlite3VdbeAddOp2(v, OP_Next, pMWin->iEphCsr, sqlite3VdbeCurrentAddr(v)-1);
  VdbeCoverage(v);
}
