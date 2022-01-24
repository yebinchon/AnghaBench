#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {scalar_t__ eStart; scalar_t__ eEnd; int iEphCsr; scalar_t__ pStart; scalar_t__ pEnd; } ;
typedef  TYPE_1__ Window ;
typedef  int /*<<< orphan*/  WhereInfo ;
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_22__ {int nMem; int /*<<< orphan*/  nTab; } ;
struct TYPE_21__ {TYPE_1__* pWin; } ;
typedef  TYPE_2__ Select ;
typedef  TYPE_3__ Parse ;

/* Variables and functions */
 int /*<<< orphan*/  OP_Copy ; 
 int /*<<< orphan*/  OP_Ge ; 
 int /*<<< orphan*/  OP_Goto ; 
 int /*<<< orphan*/  OP_IfPos ; 
 int /*<<< orphan*/  OP_Le ; 
 int /*<<< orphan*/  OP_Next ; 
 int /*<<< orphan*/  OP_Once ; 
 int /*<<< orphan*/  OP_OpenDup ; 
 int /*<<< orphan*/  OP_ResetSorter ; 
 int /*<<< orphan*/  OP_Return ; 
 int /*<<< orphan*/  OP_Rewind ; 
 int /*<<< orphan*/  OP_Subtract ; 
 scalar_t__ TK_CURRENT ; 
 scalar_t__ TK_FOLLOWING ; 
 scalar_t__ TK_PRECEDING ; 
 scalar_t__ TK_UNBOUNDED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,scalar_t__,int) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_3__*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int FUNC15 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*,TYPE_1__*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*,int,int) ; 
 int FUNC20 (TYPE_3__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ *,int,int,int*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_3__*,TYPE_1__*,int,int) ; 

__attribute__((used)) static void FUNC23(
  Parse *pParse, 
  Select *p,
  WhereInfo *pWInfo,
  int regGosub, 
  int addrGosub
){
  Window *pMWin = p->pWin;
  Vdbe *v = FUNC7(pParse);
  int regFlushPart;               /* Register for "Gosub flush_partition" */
  int lblFlushPart;               /* Label for "Gosub flush_partition" */
  int lblFlushDone;               /* Label for "Gosub flush_partition_done" */

  int regArg;
  int addr;
  int csrStart = pParse->nTab++;
  int csrEnd = pParse->nTab++;
  int regStart;                    /* Value of <expr> PRECEDING */
  int regEnd;                      /* Value of <expr> FOLLOWING */
  int addrGoto;
  int addrTop;
  int addrIfPos1 = 0;
  int addrIfPos2 = 0;
  int regSize = 0;

  FUNC5( pMWin->eStart==TK_PRECEDING 
       || pMWin->eStart==TK_CURRENT 
       || pMWin->eStart==TK_FOLLOWING 
       || pMWin->eStart==TK_UNBOUNDED 
  );
  FUNC5( pMWin->eEnd==TK_FOLLOWING 
       || pMWin->eEnd==TK_CURRENT 
       || pMWin->eEnd==TK_UNBOUNDED 
       || pMWin->eEnd==TK_PRECEDING 
  );

  /* Allocate register and label for the "flush_partition" sub-routine. */
  regFlushPart = ++pParse->nMem;
  lblFlushPart = FUNC15(pParse);
  lblFlushDone = FUNC15(pParse);

  regStart = ++pParse->nMem;
  regEnd = ++pParse->nMem;

  FUNC21(pParse, p, pWInfo, regFlushPart, lblFlushPart, &regSize);

  addrGoto = FUNC8(v, OP_Goto);

  /* Start of "flush_partition" */
  FUNC16(v, lblFlushPart);
  FUNC10(v, OP_Once, 0, FUNC13(v)+3);
  FUNC1(v);
  FUNC0((v, "Flush_partition subroutine"));
  FUNC10(v, OP_OpenDup, csrStart, pMWin->iEphCsr);
  FUNC10(v, OP_OpenDup, csrEnd, pMWin->iEphCsr);

  /* If either regStart or regEnd are not non-negative integers, throw 
  ** an exception.  */
  if( pMWin->pStart ){
    FUNC6(pParse, pMWin->pStart, regStart);
    FUNC19(pParse, regStart, 0);
  }
  if( pMWin->pEnd ){
    FUNC6(pParse, pMWin->pEnd, regEnd);
    FUNC19(pParse, regEnd, 1);
  }

  /* If this is "ROWS <expr1> FOLLOWING AND ROWS <expr2> FOLLOWING", do:
  **
  **   if( regEnd<regStart ){
  **     // The frame always consists of 0 rows
  **     regStart = regSize;
  **   }
  **   regEnd = regEnd - regStart;
  */
  if( pMWin->pEnd && pMWin->eStart==TK_FOLLOWING ){
    FUNC5( pMWin->pStart!=0 );
    FUNC5( pMWin->eEnd==TK_FOLLOWING );
    FUNC11(v, OP_Ge, regStart, FUNC13(v)+2, regEnd);
    FUNC3(v);
    FUNC10(v, OP_Copy, regSize, regStart);
    FUNC11(v, OP_Subtract, regStart, regEnd, regEnd);
  }

  if( pMWin->pStart && pMWin->eEnd==TK_PRECEDING ){
    FUNC5( pMWin->pEnd!=0 );
    FUNC5( pMWin->eStart==TK_PRECEDING );
    FUNC11(v, OP_Le, regStart, FUNC13(v)+3, regEnd);
    FUNC3(v);
    FUNC10(v, OP_Copy, regSize, regStart);
    FUNC10(v, OP_Copy, regSize, regEnd);
  }

  /* Initialize the accumulator register for each window function to NULL */
  regArg = FUNC20(pParse, pMWin);

  FUNC10(v, OP_Rewind, pMWin->iEphCsr, lblFlushDone);
  FUNC1(v);
  FUNC10(v, OP_Rewind, csrStart, lblFlushDone);
  FUNC4(v);
  FUNC12(v, 1);
  FUNC10(v, OP_Rewind, csrEnd, lblFlushDone);
  FUNC4(v);
  FUNC12(v, 1);

  /* Invoke AggStep function for each window function using the row that
  ** csrEnd currently points to. Or, if csrEnd is already at EOF,
  ** do nothing.  */
  addrTop = FUNC13(v);
  if( pMWin->eEnd==TK_PRECEDING ){
    addrIfPos1 = FUNC11(v, OP_IfPos, regEnd, 0 , 1);
    FUNC1(v);
  }
  FUNC10(v, OP_Next, csrEnd, FUNC13(v)+2);
  FUNC1(v);
  addr = FUNC8(v, OP_Goto);
  FUNC18(pParse, pMWin, csrEnd, 0, regArg, regSize);
  if( pMWin->eEnd==TK_UNBOUNDED ){
    FUNC10(v, OP_Goto, 0, addrTop);
    FUNC14(v, addr);
    addrTop = FUNC13(v);
  }else{
    FUNC14(v, addr);
    if( pMWin->eEnd==TK_PRECEDING ){
      FUNC14(v, addrIfPos1);
    }
  }

  if( pMWin->eEnd==TK_FOLLOWING ){
    addrIfPos1 = FUNC11(v, OP_IfPos, regEnd, 0 , 1);
    FUNC1(v);
  }
  if( pMWin->eStart==TK_FOLLOWING ){
    addrIfPos2 = FUNC11(v, OP_IfPos, regStart, 0 , 1);
    FUNC1(v);
  }
  FUNC17(pParse, pMWin, 0);
  FUNC22(pParse, pMWin, regGosub, addrGosub);
  FUNC10(v, OP_Next, pMWin->iEphCsr, FUNC13(v)+2);
  FUNC1(v);
  FUNC10(v, OP_Goto, 0, lblFlushDone);
  if( pMWin->eStart==TK_FOLLOWING ){
    FUNC14(v, addrIfPos2);
  }

  if( pMWin->eStart==TK_CURRENT 
   || pMWin->eStart==TK_PRECEDING 
   || pMWin->eStart==TK_FOLLOWING 
  ){
    int lblSkipInverse = FUNC15(pParse);;
    if( pMWin->eStart==TK_PRECEDING ){
      FUNC11(v, OP_IfPos, regStart, lblSkipInverse, 1);
      FUNC1(v);
    }
    if( pMWin->eStart==TK_FOLLOWING ){
      FUNC10(v, OP_Next, csrStart, FUNC13(v)+2);
      FUNC1(v);
      FUNC10(v, OP_Goto, 0, lblSkipInverse);
    }else{
      FUNC10(v, OP_Next, csrStart, FUNC13(v)+1);
      FUNC2(v);
    }
    FUNC18(pParse, pMWin, csrStart, 1, regArg, regSize);
    FUNC16(v, lblSkipInverse);
  }
  if( pMWin->eEnd==TK_FOLLOWING ){
    FUNC14(v, addrIfPos1);
  }
  FUNC10(v, OP_Goto, 0, addrTop);

  /* flush_partition_done: */
  FUNC16(v, lblFlushDone);
  FUNC9(v, OP_ResetSorter, pMWin->iEphCsr);
  FUNC9(v, OP_Return, regFlushPart);
  FUNC0((v, "end flush_partition subroutine"));

  /* Jump to here to skip over flush_partition */
  FUNC14(v, addrGoto);
}