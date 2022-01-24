#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_4__* pSelect; } ;
struct TYPE_18__ {int flags; scalar_t__ op; TYPE_1__ x; struct TYPE_18__* pLeft; } ;
struct TYPE_17__ {int /*<<< orphan*/  db; } ;
struct TYPE_16__ {TYPE_3__* pEList; } ;
struct TYPE_15__ {TYPE_2__* a; } ;
struct TYPE_14__ {int /*<<< orphan*/  pExpr; } ;
typedef  TYPE_4__ Select ;
typedef  TYPE_5__ Parse ;
typedef  TYPE_6__ Expr ;

/* Variables and functions */
 int EP_xIsSelect ; 
 scalar_t__ TK_IN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char FUNC1 (int /*<<< orphan*/ ,char) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int) ; 
 char FUNC3 (TYPE_6__*) ; 
 int FUNC4 (TYPE_6__*) ; 
 TYPE_6__* FUNC5 (TYPE_6__*,int) ; 

__attribute__((used)) static char *FUNC6(Parse *pParse, Expr *pExpr){
  Expr *pLeft = pExpr->pLeft;
  int nVal = FUNC4(pLeft);
  Select *pSelect = (pExpr->flags & EP_xIsSelect) ? pExpr->x.pSelect : 0;
  char *zRet;

  FUNC0( pExpr->op==TK_IN );
  zRet = FUNC2(pParse->db, nVal+1);
  if( zRet ){
    int i;
    for(i=0; i<nVal; i++){
      Expr *pA = FUNC5(pLeft, i);
      char a = FUNC3(pA);
      if( pSelect ){
        zRet[i] = FUNC1(pSelect->pEList->a[i].pExpr, a);
      }else{
        zRet[i] = a;
      }
    }
    zRet[nVal] = '\0';
  }
  return zRet;
}