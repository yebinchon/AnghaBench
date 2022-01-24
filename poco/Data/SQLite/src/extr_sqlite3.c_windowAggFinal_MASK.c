#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* pMWin; int /*<<< orphan*/ * pParse; } ;
typedef  TYPE_1__ WindowCodeArg ;
struct TYPE_7__ {scalar_t__ regStartRowid; scalar_t__ eStart; int regResult; int csrApp; int regAccum; TYPE_5__* pFunc; scalar_t__ regApp; struct TYPE_7__* pNextWin; } ;
typedef  TYPE_2__ Window ;
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_8__ {int funcFlags; } ;
typedef  int /*<<< orphan*/  Parse ;

/* Variables and functions */
 int /*<<< orphan*/  OP_AggFinal ; 
 int /*<<< orphan*/  OP_AggValue ; 
 int /*<<< orphan*/  OP_Column ; 
 int /*<<< orphan*/  OP_Copy ; 
 int /*<<< orphan*/  OP_Last ; 
 int /*<<< orphan*/  OP_Null ; 
 int /*<<< orphan*/  P4_FUNCDEF ; 
 int SQLITE_FUNC_MINMAX ; 
 scalar_t__ TK_UNBOUNDED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_5__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC9 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC10(WindowCodeArg *p, int bFin){
  Parse *pParse = p->pParse;
  Window *pMWin = p->pMWin;
  Vdbe *v = FUNC2(pParse);
  Window *pWin;

  for(pWin=pMWin; pWin; pWin=pWin->pNextWin){
    if( pMWin->regStartRowid==0
     && (pWin->pFunc->funcFlags & SQLITE_FUNC_MINMAX) 
     && (pWin->eStart!=TK_UNBOUNDED)
    ){
      FUNC4(v, OP_Null, 0, pWin->regResult);
      FUNC3(v, OP_Last, pWin->csrApp);
      FUNC0(v);
      FUNC5(v, OP_Column, pWin->csrApp, 0, pWin->regResult);
      FUNC8(v, FUNC7(v)-2);
    }else if( pWin->regApp ){
      FUNC1( pMWin->regStartRowid==0 );
    }else{
      int nArg = FUNC9(pWin);
      if( bFin ){
        FUNC4(v, OP_AggFinal, pWin->regAccum, nArg);
        FUNC6(v, pWin->pFunc, P4_FUNCDEF);
        FUNC4(v, OP_Copy, pWin->regAccum, pWin->regResult);
        FUNC4(v, OP_Null, 0, pWin->regAccum);
      }else{
        FUNC5(v, OP_AggValue,pWin->regAccum,nArg,pWin->regResult);
        FUNC6(v, pWin->pFunc, P4_FUNCDEF);
      }
    }
  }
}