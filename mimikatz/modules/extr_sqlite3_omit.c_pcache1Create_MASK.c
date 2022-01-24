#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_pcache ;
struct TYPE_8__ {int isAnchor; struct TYPE_8__* pLruNext; struct TYPE_8__* pLruPrev; } ;
struct TYPE_9__ {int mxPinned; int nMinPage; int nMaxPage; int /*<<< orphan*/  nPurgeable; TYPE_1__ lru; } ;
struct TYPE_11__ {int separateCache; TYPE_2__ grp; } ;
struct TYPE_10__ {int szPage; int szExtra; int bPurgeable; int nMin; scalar_t__ nHash; int /*<<< orphan*/  nPurgeableDummy; int /*<<< orphan*/ * pnPurgeable; scalar_t__ szAlloc; TYPE_2__* pGroup; } ;
typedef  int /*<<< orphan*/  PgHdr1 ;
typedef  TYPE_2__ PGroup ;
typedef  TYPE_3__ PCache1 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_7__ pcache1 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static sqlite3_pcache *FUNC7(int szPage, int szExtra, int bPurgeable){
  PCache1 *pCache;      /* The newly created page cache */
  PGroup *pGroup;       /* The group the new page cache will belong to */
  int sz;               /* Bytes of memory required to allocate the new cache */

  FUNC1( (szPage & (szPage-1))==0 && szPage>=512 && szPage<=65536 );
  FUNC1( szExtra < 300 );

  sz = sizeof(PCache1) + sizeof(PGroup)*pcache1.separateCache;
  pCache = (PCache1 *)FUNC6(sz);
  if( pCache ){
    if( pcache1.separateCache ){
      pGroup = (PGroup*)&pCache[1];
      pGroup->mxPinned = 10;
    }else{
      pGroup = &pcache1.grp;
    }
    if( pGroup->lru.isAnchor==0 ){
      pGroup->lru.isAnchor = 1;
      pGroup->lru.pLruPrev = pGroup->lru.pLruNext = &pGroup->lru;
    }
    pCache->pGroup = pGroup;
    pCache->szPage = szPage;
    pCache->szExtra = szExtra;
    pCache->szAlloc = szPage + szExtra + FUNC0(sizeof(PgHdr1));
    pCache->bPurgeable = (bPurgeable ? 1 : 0);
    FUNC3(pGroup);
    FUNC5(pCache);
    if( bPurgeable ){
      pCache->nMin = 10;
      pGroup->nMinPage += pCache->nMin;
      pGroup->mxPinned = pGroup->nMaxPage + 10 - pGroup->nMinPage;
      pCache->pnPurgeable = &pGroup->nPurgeable;
    }else{
      pCache->pnPurgeable = &pCache->nPurgeableDummy;
    }
    FUNC4(pGroup);
    if( pCache->nHash==0 ){
      FUNC2((sqlite3_pcache*)pCache);
      pCache = 0;
    }
  }
  return (sqlite3_pcache *)pCache;
}