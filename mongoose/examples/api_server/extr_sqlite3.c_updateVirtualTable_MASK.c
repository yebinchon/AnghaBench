#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3 ;
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_21__ {scalar_t__ iPKey; int nCol; TYPE_2__* aCol; } ;
typedef  TYPE_3__ Table ;
struct TYPE_23__ {TYPE_1__* a; } ;
struct TYPE_22__ {int nMem; int /*<<< orphan*/  nTab; int /*<<< orphan*/ * db; int /*<<< orphan*/ * pVdbe; } ;
struct TYPE_20__ {char* zName; } ;
struct TYPE_19__ {int /*<<< orphan*/ * pExpr; } ;
typedef  int /*<<< orphan*/  SrcList ;
typedef  int /*<<< orphan*/  SelectDest ;
typedef  int /*<<< orphan*/  Select ;
typedef  TYPE_4__ Parse ;
typedef  TYPE_5__ ExprList ;
typedef  int /*<<< orphan*/  Expr ;

/* Variables and functions */
 int BTREE_UNORDERED ; 
 int OE_Abort ; 
 int OE_Default ; 
 int /*<<< orphan*/  OP_Close ; 
 int /*<<< orphan*/  OP_Column ; 
 int /*<<< orphan*/  OP_Next ; 
 int /*<<< orphan*/  OP_OpenEphemeral ; 
 int /*<<< orphan*/  OP_Rewind ; 
 int /*<<< orphan*/  OP_VUpdate ; 
 int /*<<< orphan*/  P4_VTAB ; 
 int /*<<< orphan*/  SRT_Table ; 
 int /*<<< orphan*/  TK_ID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC3 (TYPE_4__*,TYPE_5__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_4__*,TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*,TYPE_3__*) ; 

__attribute__((used)) static void FUNC16(
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
  ExprList *pEList = 0;     /* The result set of the SELECT statement */
  Select *pSelect = 0;      /* The SELECT statement */
  Expr *pExpr;              /* Temporary expression */
  int ephemTab;             /* Table holding the result of the SELECT */
  int i;                    /* Loop counter */
  int addr;                 /* Address of top of loop */
  int iReg;                 /* First register in set passed to OP_VUpdate */
  sqlite3 *db = pParse->db; /* Database connection */
  const char *pVTab = (const char*)FUNC4(db, pTab);
  SelectDest dest;

  /* Construct the SELECT statement that will find the new values for
  ** all updated rows. 
  */
  pEList = FUNC3(pParse, 0, FUNC1(db, TK_ID, "_rowid_"));
  if( pRowid ){
    pEList = FUNC3(pParse, pEList,
                                   FUNC2(db, pRowid, 0));
  }
  FUNC0( pTab->iPKey<0 );
  for(i=0; i<pTab->nCol; i++){
    if( aXRef[i]>=0 ){
      pExpr = FUNC2(db, pChanges->a[aXRef[i]].pExpr, 0);
    }else{
      pExpr = FUNC1(db, TK_ID, pTab->aCol[i].zName);
    }
    pEList = FUNC3(pParse, pEList, pExpr);
  }
  pSelect = FUNC9(pParse, pEList, pSrc, pWhere, 0, 0, 0, 0, 0, 0);
  
  /* Create the ephemeral table into which the update results will
  ** be stored.
  */
  FUNC0( *v );
  ephemTab = pParse->nTab++;
  FUNC10(v, OP_OpenEphemeral, ephemTab, pTab->nCol+1+(pRowid!=0));
  FUNC13(v, BTREE_UNORDERED);

  /* fill the ephemeral table 
  */
  FUNC8(&dest, SRT_Table, ephemTab);
  FUNC6(pParse, pSelect, &dest);

  /* Generate code to scan the ephemeral table and call VUpdate. */
  iReg = ++pParse->nMem;
  pParse->nMem += pTab->nCol+1;
  addr = FUNC10(v, OP_Rewind, ephemTab, 0);
  FUNC11(v, OP_Column,  ephemTab, 0, iReg);
  FUNC11(v, OP_Column, ephemTab, (pRowid?1:0), iReg+1);
  for(i=0; i<pTab->nCol; i++){
    FUNC11(v, OP_Column, ephemTab, i+1+(pRowid!=0), iReg+2+i);
  }
  FUNC15(pParse, pTab);
  FUNC12(v, OP_VUpdate, 0, pTab->nCol+2, iReg, pVTab, P4_VTAB);
  FUNC13(v, onError==OE_Default ? OE_Abort : onError);
  FUNC5(pParse);
  FUNC10(v, OP_Next, ephemTab, addr+1);
  FUNC14(v, addr);
  FUNC10(v, OP_Close, ephemTab, 0);

  /* Cleanup */
  FUNC7(db, pSelect);  
}