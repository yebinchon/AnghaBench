#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_7__ ;
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {scalar_t__ eType; scalar_t__ eStart; scalar_t__ eEnd; int nBufferCol; int regPart; int iEphCsr; TYPE_7__* pOrderBy; TYPE_7__* pPartition; } ;
typedef  TYPE_4__ Window ;
typedef  int /*<<< orphan*/  WhereInfo ;
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_23__ {int nExpr; } ;
struct TYPE_22__ {int nMem; } ;
struct TYPE_21__ {TYPE_3__* pSrc; TYPE_4__* pWin; } ;
struct TYPE_19__ {TYPE_2__* a; } ;
struct TYPE_18__ {int iCursor; TYPE_1__* pTab; } ;
struct TYPE_17__ {int nCol; } ;
typedef  TYPE_5__ Select ;
typedef  TYPE_6__ Parse ;
typedef  int /*<<< orphan*/  KeyInfo ;
typedef  TYPE_7__ ExprList ;

/* Variables and functions */
 int /*<<< orphan*/  OP_Blob ; 
 int /*<<< orphan*/  OP_Column ; 
 int /*<<< orphan*/  OP_Compare ; 
 int /*<<< orphan*/  OP_Copy ; 
 int /*<<< orphan*/  OP_Gosub ; 
 int /*<<< orphan*/  OP_Goto ; 
 int /*<<< orphan*/  OP_Insert ; 
 int /*<<< orphan*/  OP_Jump ; 
 int /*<<< orphan*/  OP_MakeRecord ; 
 int /*<<< orphan*/  OP_NewRowid ; 
 int /*<<< orphan*/  OP_Next ; 
 int /*<<< orphan*/  OP_ResetSorter ; 
 int /*<<< orphan*/  OP_Rewind ; 
 int /*<<< orphan*/  P4_KEYINFO ; 
 scalar_t__ TK_CURRENT ; 
 scalar_t__ TK_RANGE ; 
 scalar_t__ TK_UNBOUNDED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_6__*) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_6__*,TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_6__*,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_6__*,TYPE_4__*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(
  Parse *pParse, 
  Select *p,
  WhereInfo *pWInfo,
  int regGosub, 
  int addrGosub
){
  Window *pMWin = p->pWin;
  Vdbe *v = FUNC3(pParse);
  int k;
  int iSubCsr = p->pSrc->a[0].iCursor;
  int nSub = p->pSrc->a[0].pTab->nCol;
  int reg = pParse->nMem+1;
  int regRecord = reg+nSub;
  int regRowid = regRecord+1;
  int addr;
  ExprList *pPart = pMWin->pPartition;
  ExprList *pOrderBy = pMWin->pOrderBy;

  FUNC2( pMWin->eType==TK_RANGE 
      || (pMWin->eStart==TK_UNBOUNDED && pMWin->eEnd==TK_CURRENT)
  );

  FUNC2( (pMWin->eStart==TK_UNBOUNDED && pMWin->eEnd==TK_CURRENT)
       || (pMWin->eStart==TK_UNBOUNDED && pMWin->eEnd==TK_UNBOUNDED)
       || (pMWin->eStart==TK_CURRENT && pMWin->eEnd==TK_CURRENT)
       || (pMWin->eStart==TK_CURRENT && pMWin->eEnd==TK_UNBOUNDED && !pOrderBy)
  );

  if( pMWin->eEnd==TK_UNBOUNDED ){
    pOrderBy = 0;
  }

  pParse->nMem += nSub + 2;

  /* Load the individual column values of the row returned by
  ** the sub-select into an array of registers. */
  for(k=0; k<nSub; k++){
    FUNC8(v, OP_Column, iSubCsr, k, reg+k);
  }

  /* Check if this is the start of a new partition or peer group. */
  if( pPart || pOrderBy ){
    int nPart = (pPart ? pPart->nExpr : 0);
    int addrGoto = 0;
    int addrJump = 0;
    int nPeer = (pOrderBy ? pOrderBy->nExpr : 0);

    if( pPart ){
      int regNewPart = reg + pMWin->nBufferCol;
      KeyInfo *pKeyInfo = FUNC4(pParse, pPart, 0, 0);
      addr = FUNC8(v, OP_Compare, regNewPart, pMWin->regPart,nPart);
      FUNC9(v, (void*)pKeyInfo, P4_KEYINFO);
      addrJump = FUNC8(v, OP_Jump, addr+2, 0, addr+2);
      FUNC1(v);
      FUNC13(pParse, pMWin, 1);
      if( pOrderBy ){
        addrGoto = FUNC5(v, OP_Goto);
      }
    }

    if( pOrderBy ){
      int regNewPeer = reg + pMWin->nBufferCol + nPart;
      int regPeer = pMWin->regPart + nPart;

      if( addrJump ) FUNC11(v, addrJump);
      if( pMWin->eType==TK_RANGE ){
        KeyInfo *pKeyInfo = FUNC4(pParse, pOrderBy, 0, 0);
        addr = FUNC8(v, OP_Compare, regNewPeer, regPeer, nPeer);
        FUNC9(v, (void*)pKeyInfo, P4_KEYINFO);
        addrJump = FUNC8(v, OP_Jump, addr+2, 0, addr+2);
        FUNC0(v);
      }else{
        addrJump = 0;
      }
      FUNC13(pParse, pMWin, pMWin->eStart==TK_CURRENT);
      if( addrGoto ) FUNC11(v, addrGoto);
    }

    FUNC7(v, OP_Rewind, pMWin->iEphCsr,FUNC10(v)+3);
    FUNC0(v);
    FUNC7(v, OP_Gosub, regGosub, addrGosub);
    FUNC7(v, OP_Next, pMWin->iEphCsr, FUNC10(v)-1);
    FUNC0(v);

    FUNC6(v, OP_ResetSorter, pMWin->iEphCsr);
    FUNC8(
        v, OP_Copy, reg+pMWin->nBufferCol, pMWin->regPart, nPart+nPeer-1
    );

    if( addrJump ) FUNC11(v, addrJump);
  }

  /* Invoke step function for window functions */
  FUNC14(pParse, pMWin, -1, 0, reg, 0);

  /* Buffer the current row in the ephemeral table. */
  if( pMWin->nBufferCol>0 ){
    FUNC8(v, OP_MakeRecord, reg, pMWin->nBufferCol, regRecord);
  }else{
    FUNC7(v, OP_Blob, 0, regRecord);
    FUNC9(v, (void*)"", 0);
  }
  FUNC7(v, OP_NewRowid, pMWin->iEphCsr, regRowid);
  FUNC8(v, OP_Insert, pMWin->iEphCsr, regRecord, regRowid);

  /* End the database scan loop. */
  FUNC12(pWInfo);

  FUNC13(pParse, pMWin, 1);
  FUNC7(v, OP_Rewind, pMWin->iEphCsr,FUNC10(v)+3);
  FUNC0(v);
  FUNC7(v, OP_Gosub, regGosub, addrGosub);
  FUNC7(v, OP_Next, pMWin->iEphCsr, FUNC10(v)-1);
  FUNC0(v);
}