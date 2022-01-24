#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {scalar_t__ eStart; scalar_t__ eEnd; int iEphCsr; scalar_t__ eType; int nBufferCol; int regPart; TYPE_4__* pOrderBy; TYPE_4__* pPartition; } ;
typedef  TYPE_1__ Window ;
typedef  int /*<<< orphan*/  WhereInfo ;
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_22__ {int nExpr; } ;
struct TYPE_21__ {int nMem; int /*<<< orphan*/  nTab; } ;
struct TYPE_20__ {TYPE_1__* pWin; } ;
typedef  TYPE_2__ Select ;
typedef  TYPE_3__ Parse ;
typedef  int /*<<< orphan*/  KeyInfo ;
typedef  TYPE_4__ ExprList ;

/* Variables and functions */
 int /*<<< orphan*/  OP_AddImm ; 
 int /*<<< orphan*/  OP_Column ; 
 int /*<<< orphan*/  OP_Compare ; 
 int /*<<< orphan*/  OP_Copy ; 
 int /*<<< orphan*/  OP_Goto ; 
 int /*<<< orphan*/  OP_Integer ; 
 int /*<<< orphan*/  OP_Jump ; 
 int /*<<< orphan*/  OP_Next ; 
 int /*<<< orphan*/  OP_Once ; 
 int /*<<< orphan*/  OP_OpenDup ; 
 int /*<<< orphan*/  OP_ResetSorter ; 
 int /*<<< orphan*/  OP_Return ; 
 int /*<<< orphan*/  OP_Rewind ; 
 int /*<<< orphan*/  P4_KEYINFO ; 
 scalar_t__ TK_CURRENT ; 
 scalar_t__ TK_RANGE ; 
 scalar_t__ TK_UNBOUNDED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_3__*,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,TYPE_1__*,int,int /*<<< orphan*/ ,int,int) ; 
 int FUNC15 (TYPE_3__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ *,int,int,int*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*,TYPE_1__*,int,int,int,int,int) ; 

__attribute__((used)) static void FUNC18(
  Parse *pParse, 
  Select *p,
  WhereInfo *pWInfo,
  int regGosub, 
  int addrGosub
){
  Window *pMWin = p->pWin;
  Vdbe *v = FUNC3(pParse);
  int k;
  int addr;
  ExprList *pPart = pMWin->pPartition;
  ExprList *pOrderBy = pMWin->pOrderBy;
  int nPeer = pOrderBy ? pOrderBy->nExpr : 0;
  int regNewPeer;

  int addrGoto;                   /* Address of Goto used to jump flush_par.. */
  int addrNext;                   /* Jump here for next iteration of loop */
  int regFlushPart;
  int lblFlushPart;
  int csrLead;
  int regCtr;
  int regArg;                     /* Register array to martial function args */
  int regSize;
  int lblEmpty;
  int bReverse = pMWin->pOrderBy && pMWin->eStart==TK_CURRENT 
          && pMWin->eEnd==TK_UNBOUNDED;

  FUNC2( (pMWin->eStart==TK_UNBOUNDED && pMWin->eEnd==TK_CURRENT) 
       || (pMWin->eStart==TK_UNBOUNDED && pMWin->eEnd==TK_UNBOUNDED) 
       || (pMWin->eStart==TK_CURRENT && pMWin->eEnd==TK_CURRENT) 
       || (pMWin->eStart==TK_CURRENT && pMWin->eEnd==TK_UNBOUNDED) 
  );

  lblEmpty = FUNC12(pParse);
  regNewPeer = pParse->nMem+1;
  pParse->nMem += nPeer;

  /* Allocate register and label for the "flush_partition" sub-routine. */
  regFlushPart = ++pParse->nMem;
  lblFlushPart = FUNC12(pParse);

  csrLead = pParse->nTab++;
  regCtr = ++pParse->nMem;

  FUNC16(pParse, p, pWInfo, regFlushPart, lblFlushPart, &regSize);
  addrGoto = FUNC5(v, OP_Goto);

  /* Start of "flush_partition" */
  FUNC13(v, lblFlushPart);
  FUNC7(v, OP_Once, 0, FUNC10(v)+2);
  FUNC0(v);
  FUNC7(v, OP_OpenDup, csrLead, pMWin->iEphCsr);

  /* Initialize the accumulator register for each window function to NULL */
  regArg = FUNC15(pParse, pMWin);

  FUNC7(v, OP_Integer, 0, regCtr);
  FUNC7(v, OP_Rewind, csrLead, lblEmpty);
  FUNC0(v);
  FUNC7(v, OP_Rewind, pMWin->iEphCsr, lblEmpty);
  FUNC1(v);

  if( bReverse ){
    int addr2 = FUNC10(v);
    FUNC14(pParse, pMWin, csrLead, 0, regArg, regSize);
    FUNC7(v, OP_Next, csrLead, addr2);
    FUNC0(v);
    FUNC7(v, OP_Rewind, csrLead, lblEmpty);
    FUNC1(v);
  }
  addrNext = FUNC10(v);

  if( pOrderBy && (pMWin->eEnd==TK_CURRENT || pMWin->eStart==TK_CURRENT) ){
    int bCurrent = (pMWin->eStart==TK_CURRENT);
    int addrJump = 0;             /* Address of OP_Jump below */
    if( pMWin->eType==TK_RANGE ){
      int iOff = pMWin->nBufferCol + (pPart ? pPart->nExpr : 0);
      int regPeer = pMWin->regPart + (pPart ? pPart->nExpr : 0);
      KeyInfo *pKeyInfo = FUNC4(pParse, pOrderBy, 0, 0);
      for(k=0; k<nPeer; k++){
        FUNC8(v, OP_Column, csrLead, iOff+k, regNewPeer+k);
      }
      addr = FUNC8(v, OP_Compare, regNewPeer, regPeer, nPeer);
      FUNC9(v, (void*)pKeyInfo, P4_KEYINFO);
      addrJump = FUNC8(v, OP_Jump, addr+2, 0, addr+2);
      FUNC0(v);
      FUNC8(v, OP_Copy, regNewPeer, regPeer, nPeer-1);
    }

    FUNC17(pParse, pMWin, regCtr, regGosub, addrGosub, 
        (bCurrent ? regArg : 0), (bCurrent ? regSize : 0)
    );
    if( addrJump ) FUNC11(v, addrJump);
  }

  if( bReverse==0 ){
    FUNC14(pParse, pMWin, csrLead, 0, regArg, regSize);
  }
  FUNC7(v, OP_AddImm, regCtr, 1);
  FUNC7(v, OP_Next, csrLead, addrNext);
  FUNC0(v);

  FUNC17(pParse, pMWin, regCtr, regGosub, addrGosub, 0, 0);

  FUNC13(v, lblEmpty);
  FUNC6(v, OP_ResetSorter, pMWin->iEphCsr);
  FUNC6(v, OP_Return, regFlushPart);

  /* Jump to here to skip over flush_partition */
  FUNC11(v, addrGoto);
}