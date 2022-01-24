#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* pEList; struct TYPE_7__* pPrior; } ;
struct TYPE_6__ {int nExpr; TYPE_1__* a; } ;
struct TYPE_5__ {int /*<<< orphan*/  pExpr; } ;
typedef  TYPE_3__ Select ;
typedef  int /*<<< orphan*/  Parse ;
typedef  int /*<<< orphan*/  CollSeq ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static CollSeq *FUNC3(Parse *pParse, Select *p, int iCol){
  CollSeq *pRet;
  if( p->pPrior ){
    pRet = FUNC3(pParse, p->pPrior, iCol);
  }else{
    pRet = 0;
  }
  FUNC1( iCol>=0 );
  /* iCol must be less than p->pEList->nExpr.  Otherwise an error would
  ** have been thrown during name resolution and we would not have gotten
  ** this far */
  if( pRet==0 && FUNC0(iCol<p->pEList->nExpr) ){
    pRet = FUNC2(pParse, p->pEList->a[iCol].pExpr);
  }
  return pRet;
}