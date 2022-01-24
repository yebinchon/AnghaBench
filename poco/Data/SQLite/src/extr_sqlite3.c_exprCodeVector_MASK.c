#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {TYPE_2__* pList; } ;
struct TYPE_18__ {scalar_t__ op; TYPE_3__ x; } ;
struct TYPE_17__ {int nMem; } ;
struct TYPE_15__ {TYPE_1__* a; } ;
struct TYPE_14__ {int /*<<< orphan*/  pExpr; } ;
typedef  TYPE_4__ Parse ;
typedef  TYPE_5__ Expr ;

/* Variables and functions */
 scalar_t__ TK_SELECT ; 
 int FUNC0 (TYPE_4__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (TYPE_4__*,TYPE_5__*,int*) ; 
 int FUNC3 (TYPE_5__*) ; 

__attribute__((used)) static int FUNC4(Parse *pParse, Expr *p, int *piFreeable){
  int iResult;
  int nResult = FUNC3(p);
  if( nResult==1 ){
    iResult = FUNC2(pParse, p, piFreeable);
  }else{
    *piFreeable = 0;
    if( p->op==TK_SELECT ){
#if SQLITE_OMIT_SUBQUERY
      iResult = 0;
#else
      iResult = FUNC0(pParse, p);
#endif
    }else{
      int i;
      iResult = pParse->nMem+1;
      pParse->nMem += nResult;
      for(i=0; i<nResult; i++){
        FUNC1(pParse, p->x.pList->a[i].pExpr, i+iResult);
      }
    }
  }
  return iResult;
}