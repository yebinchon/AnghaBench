#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_pcache ;
struct TYPE_9__ {scalar_t__ nMax; scalar_t__ nMin; struct TYPE_9__* apHash; scalar_t__ bPurgeable; TYPE_1__* pGroup; } ;
struct TYPE_8__ {scalar_t__ nMaxPage; scalar_t__ nMinPage; scalar_t__ mxPinned; } ;
typedef  TYPE_1__ PGroup ;
typedef  TYPE_2__ PCache1 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC6(sqlite3_pcache *p){
  PCache1 *pCache = (PCache1 *)p;
  PGroup *pGroup = pCache->pGroup;
  FUNC0( pCache->bPurgeable || (pCache->nMax==0 && pCache->nMin==0) );
  FUNC2(pGroup);
  FUNC4(pCache, 0);
  FUNC0( pGroup->nMaxPage >= pCache->nMax );
  pGroup->nMaxPage -= pCache->nMax;
  FUNC0( pGroup->nMinPage >= pCache->nMin );
  pGroup->nMinPage -= pCache->nMin;
  pGroup->mxPinned = pGroup->nMaxPage + 10 - pGroup->nMinPage;
  FUNC1(pGroup);
  FUNC3(pGroup);
  FUNC5(pCache->apHash);
  FUNC5(pCache);
}