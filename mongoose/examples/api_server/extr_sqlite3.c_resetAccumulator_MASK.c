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
struct AggInfo_func {int iDistinct; TYPE_4__* pExpr; int /*<<< orphan*/  iMem; } ;
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_17__ {scalar_t__ nFunc; scalar_t__ nColumn; struct AggInfo_func* aFunc; TYPE_1__* aCol; } ;
struct TYPE_14__ {TYPE_10__* pList; } ;
struct TYPE_16__ {TYPE_2__ x; } ;
struct TYPE_15__ {int /*<<< orphan*/ * pVdbe; } ;
struct TYPE_13__ {int /*<<< orphan*/  iMem; } ;
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
 int /*<<< orphan*/  P4_KEYINFO_HANDOFF ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_3__*,TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(Parse *pParse, AggInfo *pAggInfo){
  Vdbe *v = pParse->pVdbe;
  int i;
  struct AggInfo_func *pFunc;
  if( pAggInfo->nFunc+pAggInfo->nColumn==0 ){
    return;
  }
  for(i=0; i<pAggInfo->nColumn; i++){
    FUNC4(v, OP_Null, 0, pAggInfo->aCol[i].iMem);
  }
  for(pFunc=pAggInfo->aFunc, i=0; i<pAggInfo->nFunc; i++, pFunc++){
    FUNC4(v, OP_Null, 0, pFunc->iMem);
    if( pFunc->iDistinct>=0 ){
      Expr *pE = pFunc->pExpr;
      FUNC1( !FUNC0(pE, EP_xIsSelect) );
      if( pE->x.pList==0 || pE->x.pList->nExpr!=1 ){
        FUNC3(pParse, "DISTINCT aggregates must have exactly one "
           "argument");
        pFunc->iDistinct = -1;
      }else{
        KeyInfo *pKeyInfo = FUNC2(pParse, pE->x.pList);
        FUNC5(v, OP_OpenEphemeral, pFunc->iDistinct, 0, 0,
                          (char*)pKeyInfo, P4_KEYINFO_HANDOFF);
      }
    }
  }
}