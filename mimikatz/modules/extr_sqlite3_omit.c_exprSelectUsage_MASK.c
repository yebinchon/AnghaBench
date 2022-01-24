#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WhereMaskSet ;
struct TYPE_11__ {struct TYPE_11__* pPrior; int /*<<< orphan*/  pHaving; int /*<<< orphan*/  pWhere; int /*<<< orphan*/  pOrderBy; int /*<<< orphan*/  pGroupBy; int /*<<< orphan*/  pEList; TYPE_4__* pSrc; } ;
struct TYPE_10__ {int nSrc; TYPE_3__* a; } ;
struct TYPE_8__ {int /*<<< orphan*/  pFuncArg; } ;
struct TYPE_7__ {scalar_t__ isTabFunc; } ;
struct TYPE_9__ {TYPE_2__ u1; TYPE_1__ fg; int /*<<< orphan*/  pOn; TYPE_5__* pSelect; } ;
typedef  TYPE_4__ SrcList ;
typedef  TYPE_5__ Select ;
typedef  int /*<<< orphan*/  Bitmask ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Bitmask FUNC3(WhereMaskSet *pMaskSet, Select *pS){
  Bitmask mask = 0;
  while( pS ){
    SrcList *pSrc = pS->pSrc;
    mask |= FUNC1(pMaskSet, pS->pEList);
    mask |= FUNC1(pMaskSet, pS->pGroupBy);
    mask |= FUNC1(pMaskSet, pS->pOrderBy);
    mask |= FUNC2(pMaskSet, pS->pWhere);
    mask |= FUNC2(pMaskSet, pS->pHaving);
    if( FUNC0(pSrc!=0) ){
      int i;
      for(i=0; i<pSrc->nSrc; i++){
        mask |= FUNC3(pMaskSet, pSrc->a[i].pSelect);
        mask |= FUNC2(pMaskSet, pSrc->a[i].pOn);
        if( pSrc->a[i].fg.isTabFunc ){
          mask |= FUNC1(pMaskSet, pSrc->a[i].u1.pFuncArg);
        }
      }
    }
    pS = pS->pPrior;
  }
  return mask;
}