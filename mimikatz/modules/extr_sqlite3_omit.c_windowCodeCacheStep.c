
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_19__ {scalar_t__ eStart; scalar_t__ eEnd; int iEphCsr; scalar_t__ eType; int nBufferCol; int regPart; TYPE_4__* pOrderBy; TYPE_4__* pPartition; } ;
typedef TYPE_1__ Window ;
typedef int WhereInfo ;
typedef int Vdbe ;
struct TYPE_22__ {int nExpr; } ;
struct TYPE_21__ {int nMem; int nTab; } ;
struct TYPE_20__ {TYPE_1__* pWin; } ;
typedef TYPE_2__ Select ;
typedef TYPE_3__ Parse ;
typedef int KeyInfo ;
typedef TYPE_4__ ExprList ;


 int OP_AddImm ;
 int OP_Column ;
 int OP_Compare ;
 int OP_Copy ;
 int OP_Goto ;
 int OP_Integer ;
 int OP_Jump ;
 int OP_Next ;
 int OP_Once ;
 int OP_OpenDup ;
 int OP_ResetSorter ;
 int OP_Return ;
 int OP_Rewind ;
 int P4_KEYINFO ;
 scalar_t__ TK_CURRENT ;
 scalar_t__ TK_RANGE ;
 scalar_t__ TK_UNBOUNDED ;
 int VdbeCoverage (int *) ;
 int VdbeCoverageNeverTaken (int *) ;
 int assert (int) ;
 int * sqlite3GetVdbe (TYPE_3__*) ;
 int * sqlite3KeyInfoFromExprList (TYPE_3__*,TYPE_4__*,int ,int ) ;
 int sqlite3VdbeAddOp0 (int *,int ) ;
 int sqlite3VdbeAddOp1 (int *,int ,int) ;
 int sqlite3VdbeAddOp2 (int *,int ,int,int) ;
 int sqlite3VdbeAddOp3 (int *,int ,int,int,int) ;
 int sqlite3VdbeAppendP4 (int *,void*,int ) ;
 int sqlite3VdbeCurrentAddr (int *) ;
 int sqlite3VdbeJumpHere (int *,int) ;
 int sqlite3VdbeMakeLabel (TYPE_3__*) ;
 int sqlite3VdbeResolveLabel (int *,int) ;
 int windowAggStep (TYPE_3__*,TYPE_1__*,int,int ,int,int) ;
 int windowInitAccum (TYPE_3__*,TYPE_1__*) ;
 int windowPartitionCache (TYPE_3__*,TYPE_2__*,int *,int,int,int*) ;
 int windowReturnRows (TYPE_3__*,TYPE_1__*,int,int,int,int,int) ;

__attribute__((used)) static void windowCodeCacheStep(
  Parse *pParse,
  Select *p,
  WhereInfo *pWInfo,
  int regGosub,
  int addrGosub
){
  Window *pMWin = p->pWin;
  Vdbe *v = sqlite3GetVdbe(pParse);
  int k;
  int addr;
  ExprList *pPart = pMWin->pPartition;
  ExprList *pOrderBy = pMWin->pOrderBy;
  int nPeer = pOrderBy ? pOrderBy->nExpr : 0;
  int regNewPeer;

  int addrGoto;
  int addrNext;
  int regFlushPart;
  int lblFlushPart;
  int csrLead;
  int regCtr;
  int regArg;
  int regSize;
  int lblEmpty;
  int bReverse = pMWin->pOrderBy && pMWin->eStart==TK_CURRENT
          && pMWin->eEnd==TK_UNBOUNDED;

  assert( (pMWin->eStart==TK_UNBOUNDED && pMWin->eEnd==TK_CURRENT)
       || (pMWin->eStart==TK_UNBOUNDED && pMWin->eEnd==TK_UNBOUNDED)
       || (pMWin->eStart==TK_CURRENT && pMWin->eEnd==TK_CURRENT)
       || (pMWin->eStart==TK_CURRENT && pMWin->eEnd==TK_UNBOUNDED)
  );

  lblEmpty = sqlite3VdbeMakeLabel(pParse);
  regNewPeer = pParse->nMem+1;
  pParse->nMem += nPeer;


  regFlushPart = ++pParse->nMem;
  lblFlushPart = sqlite3VdbeMakeLabel(pParse);

  csrLead = pParse->nTab++;
  regCtr = ++pParse->nMem;

  windowPartitionCache(pParse, p, pWInfo, regFlushPart, lblFlushPart, &regSize);
  addrGoto = sqlite3VdbeAddOp0(v, OP_Goto);


  sqlite3VdbeResolveLabel(v, lblFlushPart);
  sqlite3VdbeAddOp2(v, OP_Once, 0, sqlite3VdbeCurrentAddr(v)+2);
  VdbeCoverage(v);
  sqlite3VdbeAddOp2(v, OP_OpenDup, csrLead, pMWin->iEphCsr);


  regArg = windowInitAccum(pParse, pMWin);

  sqlite3VdbeAddOp2(v, OP_Integer, 0, regCtr);
  sqlite3VdbeAddOp2(v, OP_Rewind, csrLead, lblEmpty);
  VdbeCoverage(v);
  sqlite3VdbeAddOp2(v, OP_Rewind, pMWin->iEphCsr, lblEmpty);
  VdbeCoverageNeverTaken(v);

  if( bReverse ){
    int addr2 = sqlite3VdbeCurrentAddr(v);
    windowAggStep(pParse, pMWin, csrLead, 0, regArg, regSize);
    sqlite3VdbeAddOp2(v, OP_Next, csrLead, addr2);
    VdbeCoverage(v);
    sqlite3VdbeAddOp2(v, OP_Rewind, csrLead, lblEmpty);
    VdbeCoverageNeverTaken(v);
  }
  addrNext = sqlite3VdbeCurrentAddr(v);

  if( pOrderBy && (pMWin->eEnd==TK_CURRENT || pMWin->eStart==TK_CURRENT) ){
    int bCurrent = (pMWin->eStart==TK_CURRENT);
    int addrJump = 0;
    if( pMWin->eType==TK_RANGE ){
      int iOff = pMWin->nBufferCol + (pPart ? pPart->nExpr : 0);
      int regPeer = pMWin->regPart + (pPart ? pPart->nExpr : 0);
      KeyInfo *pKeyInfo = sqlite3KeyInfoFromExprList(pParse, pOrderBy, 0, 0);
      for(k=0; k<nPeer; k++){
        sqlite3VdbeAddOp3(v, OP_Column, csrLead, iOff+k, regNewPeer+k);
      }
      addr = sqlite3VdbeAddOp3(v, OP_Compare, regNewPeer, regPeer, nPeer);
      sqlite3VdbeAppendP4(v, (void*)pKeyInfo, P4_KEYINFO);
      addrJump = sqlite3VdbeAddOp3(v, OP_Jump, addr+2, 0, addr+2);
      VdbeCoverage(v);
      sqlite3VdbeAddOp3(v, OP_Copy, regNewPeer, regPeer, nPeer-1);
    }

    windowReturnRows(pParse, pMWin, regCtr, regGosub, addrGosub,
        (bCurrent ? regArg : 0), (bCurrent ? regSize : 0)
    );
    if( addrJump ) sqlite3VdbeJumpHere(v, addrJump);
  }

  if( bReverse==0 ){
    windowAggStep(pParse, pMWin, csrLead, 0, regArg, regSize);
  }
  sqlite3VdbeAddOp2(v, OP_AddImm, regCtr, 1);
  sqlite3VdbeAddOp2(v, OP_Next, csrLead, addrNext);
  VdbeCoverage(v);

  windowReturnRows(pParse, pMWin, regCtr, regGosub, addrGosub, 0, 0);

  sqlite3VdbeResolveLabel(v, lblEmpty);
  sqlite3VdbeAddOp1(v, OP_ResetSorter, pMWin->iEphCsr);
  sqlite3VdbeAddOp1(v, OP_Return, regFlushPart);


  sqlite3VdbeJumpHere(v, addrGoto);
}
