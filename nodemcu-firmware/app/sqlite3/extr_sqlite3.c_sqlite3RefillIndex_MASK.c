#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
struct TYPE_25__ {scalar_t__ mallocFailed; TYPE_1__* aDb; } ;
typedef  TYPE_2__ sqlite3 ;
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_26__ {int /*<<< orphan*/  zName; int /*<<< orphan*/  tnum; } ;
typedef  TYPE_3__ Table ;
struct TYPE_28__ {int tnum; int nKeyCol; int /*<<< orphan*/  zName; int /*<<< orphan*/  pSchema; TYPE_3__* pTable; } ;
struct TYPE_27__ {int /*<<< orphan*/  nTab; scalar_t__ nErr; TYPE_2__* db; } ;
struct TYPE_24__ {int /*<<< orphan*/  zDbSName; } ;
typedef  TYPE_4__ Parse ;
typedef  int /*<<< orphan*/  KeyInfo ;
typedef  TYPE_5__ Index ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  OE_Abort ; 
 int OPFLAG_BULKCSR ; 
 int OPFLAG_P2ISREG ; 
 int OPFLAG_USESEEKRESULT ; 
 int /*<<< orphan*/  OP_Clear ; 
 int /*<<< orphan*/  OP_Close ; 
 int /*<<< orphan*/  OP_IdxInsert ; 
 int /*<<< orphan*/  OP_Last ; 
 int /*<<< orphan*/  OP_Next ; 
 int /*<<< orphan*/  OP_OpenRead ; 
 int /*<<< orphan*/  OP_OpenWrite ; 
 int /*<<< orphan*/  OP_Rewind ; 
 int /*<<< orphan*/  OP_SorterCompare ; 
 int /*<<< orphan*/  OP_SorterData ; 
 int /*<<< orphan*/  OP_SorterInsert ; 
 int /*<<< orphan*/  OP_SorterNext ; 
 int /*<<< orphan*/  OP_SorterOpen ; 
 int /*<<< orphan*/  OP_SorterSort ; 
 int /*<<< orphan*/  P4_KEYINFO ; 
 int /*<<< orphan*/  SQLITE_REINDEX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,TYPE_5__*,int,int,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_4__*,TYPE_5__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int,int,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,int) ; 
 int FUNC12 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int) ; 
 int FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC24(Parse *pParse, Index *pIndex, int memRootPage){
  Table *pTab = pIndex->pTable;  /* The table that is indexed */
  int iTab = pParse->nTab++;     /* Btree cursor used for pTab */
  int iIdx = pParse->nTab++;     /* Btree cursor used for pIndex */
  int iSorter;                   /* Cursor opened by OpenSorter (if in use) */
  int addr1;                     /* Address of top of loop */
  int addr2;                     /* Address to jump to for next iteration */
  int tnum;                      /* Root page of index */
  int iPartIdxLabel;             /* Jump to this label to skip a row */
  Vdbe *v;                       /* Generate code into this virtual machine */
  KeyInfo *pKey;                 /* KeyInfo for index */
  int regRecord;                 /* Register holding assembled index record */
  sqlite3 *db = pParse->db;      /* The database connection */
  int iDb = FUNC12(db, pIndex->pSchema);

#ifndef SQLITE_OMIT_AUTHORIZATION
  if( FUNC3(pParse, SQLITE_REINDEX, pIndex->zName, 0,
      db->aDb[iDb].zDbSName ) ){
    return;
  }
#endif

  /* Require a write-lock on the table to perform this operation */
  FUNC13(pParse, iDb, pTab->tnum, 1, pTab->zName);

  v = FUNC6(pParse);
  if( v==0 ) return;
  if( memRootPage>=0 ){
    tnum = memRootPage;
  }else{
    tnum = pIndex->tnum;
  }
  pKey = FUNC7(pParse, pIndex);
  FUNC2( pKey!=0 || db->mallocFailed || pParse->nErr );

  /* Open the sorter cursor if we are to use one. */
  iSorter = pParse->nTab++;
  FUNC18(v, OP_SorterOpen, iSorter, 0, pIndex->nKeyCol, (char*)
                    FUNC8(pKey), P4_KEYINFO);

  /* Open the table. Loop through all rows of the table, inserting index
  ** records into the sorter. */
  FUNC9(pParse, iTab, iDb, pTab, OP_OpenRead);
  addr1 = FUNC16(v, OP_Rewind, iTab, 0); FUNC1(v);
  regRecord = FUNC5(pParse);

  FUNC4(pParse,pIndex,iTab,regRecord,0,&iPartIdxLabel,0,0);
  FUNC16(v, OP_SorterInsert, iSorter, regRecord);
  FUNC11(pParse, iPartIdxLabel);
  FUNC16(v, OP_Next, iTab, addr1+1); FUNC1(v);
  FUNC23(v, addr1);
  if( memRootPage<0 ) FUNC16(v, OP_Clear, tnum, iDb);
  FUNC18(v, OP_OpenWrite, iIdx, tnum, iDb,
                    (char *)pKey, P4_KEYINFO);
  FUNC20(v, OPFLAG_BULKCSR|((memRootPage>=0)?OPFLAG_P2ISREG:0));

  addr1 = FUNC16(v, OP_SorterSort, iSorter, 0); FUNC1(v);
  if( FUNC0(pIndex) ){
    int j2 = FUNC21(v) + 3;
    FUNC22(v, j2);
    addr2 = FUNC21(v);
    FUNC19(v, OP_SorterCompare, iSorter, j2, regRecord,
                         pIndex->nKeyCol); FUNC1(v);
    FUNC14(pParse, OE_Abort, pIndex);
  }else{
    addr2 = FUNC21(v);
  }
  FUNC17(v, OP_SorterData, iSorter, regRecord, iIdx);
  FUNC17(v, OP_Last, iIdx, 0, -1);
  FUNC16(v, OP_IdxInsert, iIdx, regRecord);
  FUNC20(v, OPFLAG_USESEEKRESULT);
  FUNC10(pParse, regRecord);
  FUNC16(v, OP_SorterNext, iSorter, addr2); FUNC1(v);
  FUNC23(v, addr1);

  FUNC15(v, OP_Close, iTab);
  FUNC15(v, OP_Close, iIdx);
  FUNC15(v, OP_Close, iSorter);
}