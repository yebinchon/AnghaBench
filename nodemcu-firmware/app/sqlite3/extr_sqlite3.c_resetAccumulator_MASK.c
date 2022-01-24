#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
struct AggInfo_func {scalar_t__ iMem; int iDistinct; TYPE_4__* pExpr; } ;
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_17__ {int nFunc; int nColumn; int mxReg; int mnReg; struct AggInfo_func* aFunc; TYPE_1__* aCol; } ;
struct TYPE_14__ {TYPE_10__* pList; } ;
struct TYPE_16__ {TYPE_2__ x; } ;
struct TYPE_15__ {int /*<<< orphan*/ * pVdbe; } ;
struct TYPE_13__ {scalar_t__ iMem; } ;
struct TYPE_12__ {int nExpr; } ;
typedef  TYPE_3__ Parse ;
typedef  int /*<<< orphan*/  KeyInfo ;
typedef  TYPE_4__ Expr ;
typedef  TYPE_5__ AggInfo ;

/* Variables and functions */
 int /*<<< orphan*/  EP_xIsSelect ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OP_Null ; 
 int /*<<< orphan*/  OP_OpenEphemeral ; 
 int /*<<< orphan*/  P4_KEYINFO ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_3__*,TYPE_10__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(Parse *pParse, AggInfo *pAggInfo){
  Vdbe *v = pParse->pVdbe;
  int i;
  struct AggInfo_func *pFunc;
  int nReg = pAggInfo->nFunc + pAggInfo->nColumn;
  if( nReg==0 ) return;
#ifdef SQLITE_DEBUG
  /* Verify that all AggInfo registers are within the range specified by
  ** AggInfo.mnReg..AggInfo.mxReg */
  assert( nReg==pAggInfo->mxReg-pAggInfo->mnReg+1 );
  for(i=0; i<pAggInfo->nColumn; i++){
    assert( pAggInfo->aCol[i].iMem>=pAggInfo->mnReg
         && pAggInfo->aCol[i].iMem<=pAggInfo->mxReg );
  }
  for(i=0; i<pAggInfo->nFunc; i++){
    assert( pAggInfo->aFunc[i].iMem>=pAggInfo->mnReg
         && pAggInfo->aFunc[i].iMem<=pAggInfo->mxReg );
  }
#endif
  FUNC4(v, OP_Null, 0, pAggInfo->mnReg, pAggInfo->mxReg);
  for(pFunc=pAggInfo->aFunc, i=0; i<pAggInfo->nFunc; i++, pFunc++){
    if( pFunc->iDistinct>=0 ){
      Expr *pE = pFunc->pExpr;
      FUNC1( !FUNC0(pE, EP_xIsSelect) );
      if( pE->x.pList==0 || pE->x.pList->nExpr!=1 ){
        FUNC3(pParse, "DISTINCT aggregates must have exactly one "
           "argument");
        pFunc->iDistinct = -1;
      }else{
        KeyInfo *pKeyInfo = FUNC2(pParse, pE->x.pList, 0, 0);
        FUNC5(v, OP_OpenEphemeral, pFunc->iDistinct, 0, 0,
                          (char*)pKeyInfo, P4_KEYINFO);
      }
    }
  }
}