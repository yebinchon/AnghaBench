#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_17__ {int nExpr; int iECursor; } ;
struct TYPE_16__ {int /*<<< orphan*/ * pVdbe; } ;
struct TYPE_15__ {int selFlags; int iLimit; int iOffset; } ;
typedef  TYPE_1__ Select ;
typedef  TYPE_2__ Parse ;
typedef  TYPE_3__ ExprList ;

/* Variables and functions */
 int OP_AddImm ; 
 int /*<<< orphan*/  OP_Delete ; 
 int /*<<< orphan*/  OP_Goto ; 
 int OP_IdxInsert ; 
 int /*<<< orphan*/  OP_IfZero ; 
 int /*<<< orphan*/  OP_Last ; 
 int /*<<< orphan*/  OP_MakeRecord ; 
 int OP_Sequence ; 
 int OP_SorterInsert ; 
 int SF_UseSorter ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int,int,int) ; 
 int FUNC3 (TYPE_2__*,int) ; 
 int FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC12(
  Parse *pParse,         /* Parser context */
  ExprList *pOrderBy,    /* The ORDER BY clause */
  Select *pSelect,       /* The whole SELECT statement */
  int regData            /* Register holding data to be sorted */
){
  Vdbe *v = pParse->pVdbe;
  int nExpr = pOrderBy->nExpr;
  int regBase = FUNC3(pParse, nExpr+2);
  int regRecord = FUNC4(pParse);
  int op;
  FUNC0(pParse);
  FUNC1(pParse, pOrderBy, regBase, 0);
  FUNC9(v, OP_Sequence, pOrderBy->iECursor, regBase+nExpr);
  FUNC2(pParse, regData, regBase+nExpr+1, 1);
  FUNC10(v, OP_MakeRecord, regBase, nExpr + 2, regRecord);
  if( pSelect->selFlags & SF_UseSorter ){
    op = OP_SorterInsert;
  }else{
    op = OP_IdxInsert;
  }
  FUNC9(v, op, pOrderBy->iECursor, regRecord);
  FUNC6(pParse, regRecord);
  FUNC5(pParse, regBase, nExpr+2);
  if( pSelect->iLimit ){
    int addr1, addr2;
    int iLimit;
    if( pSelect->iOffset ){
      iLimit = pSelect->iOffset+1;
    }else{
      iLimit = pSelect->iLimit;
    }
    addr1 = FUNC8(v, OP_IfZero, iLimit);
    FUNC9(v, OP_AddImm, iLimit, -1);
    addr2 = FUNC7(v, OP_Goto);
    FUNC11(v, addr1);
    FUNC8(v, OP_Last, pOrderBy->iECursor);
    FUNC8(v, OP_Delete, pOrderBy->iECursor);
    FUNC11(v, addr2);
  }
}