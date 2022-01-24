#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ eStart; scalar_t__ regApp; scalar_t__ csrApp; scalar_t__ regAccum; TYPE_3__* pFunc; struct TYPE_8__* pNextWin; } ;
typedef  TYPE_1__ Window ;
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_10__ {scalar_t__ zName; int funcFlags; } ;
struct TYPE_9__ {int nMem; } ;
typedef  TYPE_2__ Parse ;
typedef  TYPE_3__ FuncDef ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OP_Integer ; 
 int /*<<< orphan*/  OP_Null ; 
 int /*<<< orphan*/  OP_ResetSorter ; 
 int SQLITE_FUNC_MINMAX ; 
 scalar_t__ TK_UNBOUNDED ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ first_valueName ; 
 scalar_t__ nth_valueName ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC6(Parse *pParse, Window *pMWin){
  Vdbe *v = FUNC2(pParse);
  int regArg;
  int nArg = 0;
  Window *pWin;
  for(pWin=pMWin; pWin; pWin=pWin->pNextWin){
    FuncDef *pFunc = pWin->pFunc;
    FUNC4(v, OP_Null, 0, pWin->regAccum);
    nArg = FUNC0(nArg, FUNC5(pWin));
    if( pFunc->zName==nth_valueName
     || pFunc->zName==first_valueName
    ){
      FUNC4(v, OP_Integer, 0, pWin->regApp);
      FUNC4(v, OP_Integer, 0, pWin->regApp+1);
    }

    if( (pFunc->funcFlags & SQLITE_FUNC_MINMAX) && pWin->csrApp ){
      FUNC1( pWin->eStart!=TK_UNBOUNDED );
      FUNC3(v, OP_ResetSorter, pWin->csrApp);
      FUNC4(v, OP_Integer, 0, pWin->regApp+1);
    }
  }
  regArg = pParse->nMem+1;
  pParse->nMem += nArg;
  return regArg;
}