#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_17__ {int /*<<< orphan*/  nErr; TYPE_1__* db; int /*<<< orphan*/ * pVdbe; } ;
struct TYPE_16__ {int iLimit; int /*<<< orphan*/  iOffset; } ;
struct TYPE_15__ {int iSdst; int nSdst; int eDest; int iSDParm; char* zAffSdst; } ;
struct TYPE_14__ {scalar_t__ mallocFailed; } ;
typedef  TYPE_2__ SelectDest ;
typedef  TYPE_3__ Select ;
typedef  TYPE_4__ Parse ;
typedef  int /*<<< orphan*/  KeyInfo ;

/* Variables and functions */
 int /*<<< orphan*/  OPFLAG_APPEND ; 
 int /*<<< orphan*/  OP_Compare ; 
 int /*<<< orphan*/  OP_Copy ; 
 int /*<<< orphan*/  OP_DecrJumpZero ; 
 int /*<<< orphan*/  OP_IdxInsert ; 
 int /*<<< orphan*/  OP_IfNot ; 
 int /*<<< orphan*/  OP_Insert ; 
 int /*<<< orphan*/  OP_Integer ; 
 int /*<<< orphan*/  OP_Jump ; 
 int /*<<< orphan*/  OP_MakeRecord ; 
 int /*<<< orphan*/  OP_NewRowid ; 
 int /*<<< orphan*/  OP_ResultRow ; 
 int /*<<< orphan*/  OP_Return ; 
 int /*<<< orphan*/  OP_Yield ; 
 int P4_KEYINFO ; 
#define  SRT_Coroutine 131 
#define  SRT_EphemTab 130 
 int SRT_Exists ; 
#define  SRT_Mem 129 
 int SRT_Output ; 
#define  SRT_Set 128 
 int SRT_Table ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int,int,int) ; 
 int FUNC4 (TYPE_4__*,int) ; 
 int FUNC5 (TYPE_4__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 
 int FUNC16 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 

__attribute__((used)) static int FUNC19(
  Parse *pParse,          /* Parsing context */
  Select *p,              /* The SELECT statement */
  SelectDest *pIn,        /* Coroutine supplying data */
  SelectDest *pDest,      /* Where to send the data */
  int regReturn,          /* The return address register */
  int regPrev,            /* Previous result register.  No uniqueness if 0 */
  KeyInfo *pKeyInfo,      /* For comparing with previous entry */
  int iBreak              /* Jump here if we hit the LIMIT */
){
  Vdbe *v = pParse->pVdbe;
  int iContinue;
  int addr;

  addr = FUNC14(v);
  iContinue = FUNC16(pParse);

  /* Suppress duplicates for UNION, EXCEPT, and INTERSECT 
  */
  if( regPrev ){
    int addr1, addr2;
    addr1 = FUNC8(v, OP_IfNot, regPrev); FUNC0(v);
    addr2 = FUNC11(v, OP_Compare, pIn->iSdst, regPrev+1, pIn->nSdst,
                              (char*)FUNC6(pKeyInfo), P4_KEYINFO);
    FUNC10(v, OP_Jump, addr2+2, iContinue, addr2+2); FUNC0(v);
    FUNC15(v, addr1);
    FUNC10(v, OP_Copy, pIn->iSdst, regPrev+1, pIn->nSdst-1);
    FUNC9(v, OP_Integer, 1, regPrev);
  }
  if( pParse->db->mallocFailed ) return 0;

  /* Suppress the first OFFSET entries if there is an OFFSET clause
  */
  FUNC2(v, p->iOffset, iContinue);

  FUNC1( pDest->eDest!=SRT_Exists );
  FUNC1( pDest->eDest!=SRT_Table );
  switch( pDest->eDest ){
    /* Store the result as data using a unique key.
    */
    case SRT_EphemTab: {
      int r1 = FUNC5(pParse);
      int r2 = FUNC5(pParse);
      FUNC10(v, OP_MakeRecord, pIn->iSdst, pIn->nSdst, r1);
      FUNC9(v, OP_NewRowid, pDest->iSDParm, r2);
      FUNC10(v, OP_Insert, pDest->iSDParm, r1, r2);
      FUNC13(v, OPFLAG_APPEND);
      FUNC7(pParse, r2);
      FUNC7(pParse, r1);
      break;
    }

#ifndef SQLITE_OMIT_SUBQUERY
    /* If we are creating a set for an "expr IN (SELECT ...)".
    */
    case SRT_Set: {
      int r1;
      FUNC18( pIn->nSdst>1 );
      r1 = FUNC5(pParse);
      FUNC11(v, OP_MakeRecord, pIn->iSdst, pIn->nSdst, 
          r1, pDest->zAffSdst, pIn->nSdst);
      FUNC12(v, OP_IdxInsert, pDest->iSDParm, r1,
                           pIn->iSdst, pIn->nSdst);
      FUNC7(pParse, r1);
      break;
    }

    /* If this is a scalar select that is part of an expression, then
    ** store the results in the appropriate memory cell and break out
    ** of the scan loop.
    */
    case SRT_Mem: {
      FUNC1( pIn->nSdst==1 || pParse->nErr>0 );  FUNC18( pIn->nSdst!=1 );
      FUNC3(pParse, pIn->iSdst, pDest->iSDParm, 1);
      /* The LIMIT clause will jump out of the loop for us */
      break;
    }
#endif /* #ifndef SQLITE_OMIT_SUBQUERY */

    /* The results are stored in a sequence of registers
    ** starting at pDest->iSdst.  Then the co-routine yields.
    */
    case SRT_Coroutine: {
      if( pDest->iSdst==0 ){
        pDest->iSdst = FUNC4(pParse, pIn->nSdst);
        pDest->nSdst = pIn->nSdst;
      }
      FUNC3(pParse, pIn->iSdst, pDest->iSdst, pIn->nSdst);
      FUNC8(v, OP_Yield, pDest->iSDParm);
      break;
    }

    /* If none of the above, then the result destination must be
    ** SRT_Output.  This routine is never called with any other
    ** destination other than the ones handled above or SRT_Output.
    **
    ** For SRT_Output, results are stored in a sequence of registers.  
    ** Then the OP_ResultRow opcode is used to cause sqlite3_step() to
    ** return the next row of result.
    */
    default: {
      FUNC1( pDest->eDest==SRT_Output );
      FUNC9(v, OP_ResultRow, pIn->iSdst, pIn->nSdst);
      break;
    }
  }

  /* Jump to the end of the loop if the LIMIT is reached.
  */
  if( p->iLimit ){
    FUNC9(v, OP_DecrJumpZero, p->iLimit, iBreak); FUNC0(v);
  }

  /* Generate the subroutine return
  */
  FUNC17(v, iContinue);
  FUNC8(v, OP_Return, regReturn);

  return addr;
}