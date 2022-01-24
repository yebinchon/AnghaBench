#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_6__ {scalar_t__ bPurgeable; int eCreate; TYPE_1__* pSynced; TYPE_1__* pDirty; TYPE_1__* pDirtyTail; } ;
struct TYPE_5__ {int flags; struct TYPE_5__* pDirtyPrev; struct TYPE_5__* pDirtyNext; int /*<<< orphan*/  pgno; TYPE_2__* pCache; } ;
typedef  TYPE_1__ PgHdr ;
typedef  TYPE_2__ PCache ;

/* Variables and functions */
 int PCACHE_DIRTYLIST_ADD ; 
 int PCACHE_DIRTYLIST_REMOVE ; 
 int PGHDR_NEED_SYNC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(PgHdr *pPage, u8 addRemove){
  PCache *p = pPage->pCache;

  FUNC2(("%p.DIRTYLIST.%s %d\n", p,
                addRemove==1 ? "REMOVE" : addRemove==2 ? "ADD" : "FRONT",
                pPage->pgno));
  if( addRemove & PCACHE_DIRTYLIST_REMOVE ){
    FUNC0( pPage->pDirtyNext || pPage==p->pDirtyTail );
    FUNC0( pPage->pDirtyPrev || pPage==p->pDirty );

    /* Update the PCache1.pSynced variable if necessary. */
    if( p->pSynced==pPage ){
      p->pSynced = pPage->pDirtyPrev;
    }

    if( pPage->pDirtyNext ){
      pPage->pDirtyNext->pDirtyPrev = pPage->pDirtyPrev;
    }else{
      FUNC0( pPage==p->pDirtyTail );
      p->pDirtyTail = pPage->pDirtyPrev;
    }
    if( pPage->pDirtyPrev ){
      pPage->pDirtyPrev->pDirtyNext = pPage->pDirtyNext;
    }else{
      /* If there are now no dirty pages in the cache, set eCreate to 2.
      ** This is an optimization that allows sqlite3PcacheFetch() to skip
      ** searching for a dirty page to eject from the cache when it might
      ** otherwise have to.  */
      FUNC0( pPage==p->pDirty );
      p->pDirty = pPage->pDirtyNext;
      FUNC0( p->bPurgeable || p->eCreate==2 );
      if( p->pDirty==0 ){         /*OPTIMIZATION-IF-TRUE*/
        FUNC0( p->bPurgeable==0 || p->eCreate==1 );
        p->eCreate = 2;
      }
    }
    pPage->pDirtyNext = 0;
    pPage->pDirtyPrev = 0;
  }
  if( addRemove & PCACHE_DIRTYLIST_ADD ){
    FUNC0( pPage->pDirtyNext==0 && pPage->pDirtyPrev==0 && p->pDirty!=pPage );

    pPage->pDirtyNext = p->pDirty;
    if( pPage->pDirtyNext ){
      FUNC0( pPage->pDirtyNext->pDirtyPrev==0 );
      pPage->pDirtyNext->pDirtyPrev = pPage;
    }else{
      p->pDirtyTail = pPage;
      if( p->bPurgeable ){
        FUNC0( p->eCreate==2 );
        p->eCreate = 1;
      }
    }
    p->pDirty = pPage;

    /* If pSynced is NULL and this page has a clear NEED_SYNC flag, set
    ** pSynced to point to it. Checking the NEED_SYNC flag is an
    ** optimization, as if pSynced points to a page with the NEED_SYNC
    ** flag set sqlite3PcacheFetchStress() searches through all newer
    ** entries of the dirty-list for a page with NEED_SYNC clear anyway.  */
    if( !p->pSynced
     && 0==(pPage->flags&PGHDR_NEED_SYNC)   /*OPTIMIZATION-IF-FALSE*/
    ){
      p->pSynced = pPage;
    }
  }
  FUNC1(p);
}