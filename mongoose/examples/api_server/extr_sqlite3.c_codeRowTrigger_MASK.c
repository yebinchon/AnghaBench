#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_38__   TYPE_7__ ;
typedef  struct TYPE_37__   TYPE_6__ ;
typedef  struct TYPE_36__   TYPE_5__ ;
typedef  struct TYPE_35__   TYPE_4__ ;
typedef  struct TYPE_34__   TYPE_3__ ;
typedef  struct TYPE_33__   TYPE_2__ ;
typedef  struct TYPE_32__   TYPE_1__ ;

/* Type definitions */
struct TYPE_32__ {scalar_t__ mallocFailed; } ;
typedef  TYPE_1__ sqlite3 ;
typedef  int /*<<< orphan*/  sNC ;
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_33__ {int orconf; int* aColmask; TYPE_3__* pTrigger; TYPE_5__* pProgram; struct TYPE_33__* pNext; } ;
typedef  TYPE_2__ TriggerPrg ;
struct TYPE_34__ {scalar_t__ op; scalar_t__ tr_tm; int /*<<< orphan*/  zName; int /*<<< orphan*/  step_list; int /*<<< orphan*/  pWhen; } ;
typedef  TYPE_3__ Trigger ;
struct TYPE_35__ {int /*<<< orphan*/  zName; } ;
typedef  TYPE_4__ Table ;
struct TYPE_38__ {TYPE_6__* pParse; } ;
struct TYPE_37__ {int pVdbe; scalar_t__ eTriggerOp; int oldmask; int newmask; int /*<<< orphan*/  nMaxArg; TYPE_2__* pTriggerPrg; int /*<<< orphan*/  pZombieTab; int /*<<< orphan*/  pAinc; int /*<<< orphan*/  nOnce; int /*<<< orphan*/  nTab; int /*<<< orphan*/  nMem; int /*<<< orphan*/  nQueryLoop; int /*<<< orphan*/  zAuthContext; struct TYPE_37__* pToplevel; TYPE_4__* pTriggerTab; TYPE_1__* db; } ;
struct TYPE_36__ {void* token; int /*<<< orphan*/  nOnce; int /*<<< orphan*/  nCsr; int /*<<< orphan*/  nMem; int /*<<< orphan*/  nOp; int /*<<< orphan*/  aOp; } ;
typedef  TYPE_5__ SubProgram ;
typedef  TYPE_6__ Parse ;
typedef  TYPE_7__ NameContext ;
typedef  int /*<<< orphan*/  Expr ;

/* Variables and functions */
 int /*<<< orphan*/  OP_Halt ; 
 int /*<<< orphan*/  P4_DYNAMIC ; 
 int /*<<< orphan*/  SQLITE_JUMPIFNULL ; 
 scalar_t__ SQLITE_OK ; 
 scalar_t__ TK_DELETE ; 
 scalar_t__ TK_INSERT ; 
 scalar_t__ TK_UPDATE ; 
 scalar_t__ TRIGGER_BEFORE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 void* FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC11 (TYPE_6__*) ; 
 scalar_t__ FUNC12 (TYPE_7__*,int /*<<< orphan*/ *) ; 
 TYPE_6__* FUNC13 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int,TYPE_5__*) ; 
 int FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC22 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_6__*,TYPE_6__*) ; 

__attribute__((used)) static TriggerPrg *FUNC24(
  Parse *pParse,       /* Current parse context */
  Trigger *pTrigger,   /* Trigger to code */
  Table *pTab,         /* The table pTrigger is attached to */
  int orconf           /* ON CONFLICT policy to code trigger program with */
){
  Parse *pTop = FUNC11(pParse);
  sqlite3 *db = pParse->db;   /* Database handle */
  TriggerPrg *pPrg;           /* Value to return */
  Expr *pWhen = 0;            /* Duplicate of trigger WHEN expression */
  Vdbe *v;                    /* Temporary VM */
  NameContext sNC;            /* Name context for sub-vdbe */
  SubProgram *pProgram = 0;   /* Sub-vdbe for trigger program */
  Parse *pSubParse;           /* Parse context for sub-vdbe */
  int iEndTrigger = 0;        /* Label to jump to if WHEN is false */

  FUNC1( pTrigger->zName==0 || pTab==FUNC22(pTrigger) );
  FUNC1( pTop->pVdbe );

  /* Allocate the TriggerPrg and SubProgram objects. To ensure that they
  ** are freed if an error occurs, link them into the Parse.pTriggerPrg 
  ** list of the top-level Parse object sooner rather than later.  */
  pPrg = FUNC5(db, sizeof(TriggerPrg));
  if( !pPrg ) return 0;
  pPrg->pNext = pTop->pTriggerPrg;
  pTop->pTriggerPrg = pPrg;
  pPrg->pProgram = pProgram = FUNC5(db, sizeof(SubProgram));
  if( !pProgram ) return 0;
  FUNC18(pTop->pVdbe, pProgram);
  pPrg->pTrigger = pTrigger;
  pPrg->orconf = orconf;
  pPrg->aColmask[0] = 0xffffffff;
  pPrg->aColmask[1] = 0xffffffff;

  /* Allocate and populate a new Parse context to use for coding the 
  ** trigger sub-program.  */
  pSubParse = FUNC13(db, sizeof(Parse));
  if( !pSubParse ) return 0;
  FUNC3(&sNC, 0, sizeof(sNC));
  sNC.pParse = pSubParse;
  pSubParse->db = db;
  pSubParse->pTriggerTab = pTab;
  pSubParse->pToplevel = pTop;
  pSubParse->zAuthContext = pTrigger->zName;
  pSubParse->eTriggerOp = pTrigger->op;
  pSubParse->nQueryLoop = pParse->nQueryLoop;

  v = FUNC9(pSubParse);
  if( v ){
    FUNC0((v, "Start: %s.%s (%s %s%s%s ON %s)", 
      pTrigger->zName, FUNC4(orconf),
      (pTrigger->tr_tm==TRIGGER_BEFORE ? "BEFORE" : "AFTER"),
        (pTrigger->op==TK_UPDATE ? "UPDATE" : ""),
        (pTrigger->op==TK_INSERT ? "INSERT" : ""),
        (pTrigger->op==TK_DELETE ? "DELETE" : ""),
      pTab->zName
    ));
#ifndef SQLITE_OMIT_TRACE
    FUNC16(v, -1, 
      FUNC10(db, "-- TRIGGER %s", pTrigger->zName), P4_DYNAMIC
    );
#endif

    /* If one was specified, code the WHEN clause. If it evaluates to false
    ** (or NULL) the sub-vdbe is immediately halted by jumping to the 
    ** OP_Halt inserted at the end of the program.  */
    if( pTrigger->pWhen ){
      pWhen = FUNC7(db, pTrigger->pWhen, 0);
      if( SQLITE_OK==FUNC12(&sNC, pWhen) 
       && db->mallocFailed==0 
      ){
        iEndTrigger = FUNC19(v);
        FUNC8(pSubParse, pWhen, iEndTrigger, SQLITE_JUMPIFNULL);
      }
      FUNC6(db, pWhen);
    }

    /* Code the trigger program into the sub-vdbe. */
    FUNC2(pSubParse, pTrigger->step_list, orconf);

    /* Insert an OP_Halt at the end of the sub-program. */
    if( iEndTrigger ){
      FUNC20(v, iEndTrigger);
    }
    FUNC15(v, OP_Halt);
    FUNC0((v, "End: %s.%s", pTrigger->zName, FUNC4(orconf)));

    FUNC23(pParse, pSubParse);
    if( db->mallocFailed==0 ){
      pProgram->aOp = FUNC21(v, &pProgram->nOp, &pTop->nMaxArg);
    }
    pProgram->nMem = pSubParse->nMem;
    pProgram->nCsr = pSubParse->nTab;
    pProgram->nOnce = pSubParse->nOnce;
    pProgram->token = (void *)pTrigger;
    pPrg->aColmask[0] = pSubParse->oldmask;
    pPrg->aColmask[1] = pSubParse->newmask;
    FUNC17(v);
  }

  FUNC1( !pSubParse->pAinc       && !pSubParse->pZombieTab );
  FUNC1( !pSubParse->pTriggerPrg && !pSubParse->nMaxArg );
  FUNC14(db, pSubParse);

  return pPrg;
}