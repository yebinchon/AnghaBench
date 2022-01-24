#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3 ;
typedef  int /*<<< orphan*/  WhereInfo ;
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_21__ {int nCol; } ;
typedef  TYPE_3__ Table ;
struct TYPE_24__ {TYPE_2__* a; } ;
struct TYPE_23__ {int nMem; scalar_t__ isMultiWrite; int /*<<< orphan*/  nTab; int /*<<< orphan*/ * db; int /*<<< orphan*/ * pVdbe; } ;
struct TYPE_22__ {TYPE_1__* a; } ;
struct TYPE_20__ {int /*<<< orphan*/ * pExpr; } ;
struct TYPE_19__ {int iCursor; } ;
typedef  TYPE_4__ SrcList ;
typedef  TYPE_5__ Parse ;
typedef  TYPE_6__ ExprList ;
typedef  int /*<<< orphan*/  Expr ;

/* Variables and functions */
 int OE_Abort ; 
 int OE_Default ; 
 int /*<<< orphan*/  OP_Close ; 
 int /*<<< orphan*/  OP_Column ; 
 int /*<<< orphan*/  OP_Insert ; 
 int /*<<< orphan*/  OP_MakeRecord ; 
 int /*<<< orphan*/  OP_NewRowid ; 
 int /*<<< orphan*/  OP_Next ; 
 int /*<<< orphan*/  OP_OpenEphemeral ; 
 int /*<<< orphan*/  OP_Rewind ; 
 int /*<<< orphan*/  OP_Rowid ; 
 int /*<<< orphan*/  OP_VColumn ; 
 int /*<<< orphan*/  OP_VUpdate ; 
 int /*<<< orphan*/  P4_VTAB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WHERE_ONEPASS_DESIRED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 scalar_t__ FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__*,TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC14 (TYPE_5__*,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static void FUNC17(
  Parse *pParse,       /* The parsing context */
  SrcList *pSrc,       /* The virtual table to be modified */
  Table *pTab,         /* The virtual table */
  ExprList *pChanges,  /* The columns to change in the UPDATE statement */
  Expr *pRowid,        /* Expression used to recompute the rowid */
  int *aXRef,          /* Mapping from columns of pTab to entries in pChanges */
  Expr *pWhere,        /* WHERE clause of the UPDATE statement */
  int onError          /* ON CONFLICT strategy */
){
  Vdbe *v = pParse->pVdbe;  /* Virtual machine under construction */
  int ephemTab;             /* Table holding the result of the SELECT */
  int i;                    /* Loop counter */
  sqlite3 *db = pParse->db; /* Database connection */
  const char *pVTab = (const char*)FUNC3(db, pTab);
  WhereInfo *pWInfo;
  int nArg = 2 + pTab->nCol;      /* Number of arguments to VUpdate */
  int regArg;                     /* First register in VUpdate arg array */
  int regRec;                     /* Register in which to assemble record */
  int regRowid;                   /* Register for ephem table rowid */
  int iCsr = pSrc->a[0].iCursor;  /* Cursor used for virtual table scan */
  int aDummy[2];                  /* Unused arg for sqlite3WhereOkOnePass() */
  int bOnePass;                   /* True to use onepass strategy */
  int addr;                       /* Address of OP_OpenEphemeral */

  /* Allocate nArg registers to martial the arguments to VUpdate. Then
  ** create and open the ephemeral table in which the records created from
  ** these arguments will be temporarily stored. */
  FUNC1( v );
  ephemTab = pParse->nTab++;
  addr= FUNC7(v, OP_OpenEphemeral, ephemTab, nArg);
  regArg = pParse->nMem + 1;
  pParse->nMem += nArg;
  regRec = ++pParse->nMem;
  regRowid = ++pParse->nMem;

  /* Start scanning the virtual table */
  pWInfo = FUNC14(pParse, pSrc, pWhere, 0,0,WHERE_ONEPASS_DESIRED,0);
  if( pWInfo==0 ) return;

  /* Populate the argument registers. */
  FUNC7(v, OP_Rowid, iCsr, regArg);
  if( pRowid ){
    FUNC2(pParse, pRowid, regArg+1);
  }else{
    FUNC7(v, OP_Rowid, iCsr, regArg+1);
  }
  for(i=0; i<pTab->nCol; i++){
    if( aXRef[i]>=0 ){
      FUNC2(pParse, pChanges->a[aXRef[i]].pExpr, regArg+2+i);
    }else{
      FUNC8(v, OP_VColumn, iCsr, i, regArg+2+i);
    }
  }

  bOnePass = FUNC16(pWInfo, aDummy);

  if( bOnePass ){
    /* If using the onepass strategy, no-op out the OP_OpenEphemeral coded
    ** above. Also, if this is a top-level parse (not a trigger), clear the
    ** multi-write flag so that the VM does not open a statement journal */
    FUNC11(v, addr);
    if( FUNC4(pParse) ){
      pParse->isMultiWrite = 0;
    }
  }else{
    /* Create a record from the argument register contents and insert it into
    ** the ephemeral table. */
    FUNC8(v, OP_MakeRecord, regArg, nArg, regRec);
    FUNC7(v, OP_NewRowid, ephemTab, regRowid);
    FUNC8(v, OP_Insert, ephemTab, regRec, regRowid);
  }


  if( bOnePass==0 ){
    /* End the virtual table scan */
    FUNC15(pWInfo);

    /* Begin scannning through the ephemeral table. */
    addr = FUNC6(v, OP_Rewind, ephemTab); FUNC0(v);

    /* Extract arguments from the current row of the ephemeral table and
    ** invoke the VUpdate method.  */
    for(i=0; i<nArg; i++){
      FUNC8(v, OP_Column, ephemTab, i, regArg+i);
    }
  }
  FUNC13(pParse, pTab);
  FUNC9(v, OP_VUpdate, 0, nArg, regArg, pVTab, P4_VTAB);
  FUNC10(v, onError==OE_Default ? OE_Abort : onError);
  FUNC5(pParse);

  /* End of the ephemeral table scan. Or, if using the onepass strategy,
  ** jump to here if the scan visited zero rows. */
  if( bOnePass==0 ){
    FUNC7(v, OP_Next, ephemTab, addr+1); FUNC0(v);
    FUNC12(v, addr);
    FUNC7(v, OP_Close, ephemTab, 0);
  }else{
    FUNC15(pWInfo);
  }
}