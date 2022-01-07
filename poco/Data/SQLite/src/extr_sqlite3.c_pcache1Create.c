
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int sqlite3_pcache ;
struct TYPE_8__ {int isAnchor; struct TYPE_8__* pLruNext; struct TYPE_8__* pLruPrev; } ;
struct TYPE_9__ {int mxPinned; int nMinPage; int nMaxPage; int nPurgeable; TYPE_1__ lru; } ;
struct TYPE_11__ {int separateCache; TYPE_2__ grp; } ;
struct TYPE_10__ {int szPage; int szExtra; int bPurgeable; int nMin; scalar_t__ nHash; int nPurgeableDummy; int * pnPurgeable; scalar_t__ szAlloc; TYPE_2__* pGroup; } ;
typedef int PgHdr1 ;
typedef TYPE_2__ PGroup ;
typedef TYPE_3__ PCache1 ;


 scalar_t__ ROUND8 (int) ;
 int assert (int) ;
 TYPE_7__ pcache1 ;
 int pcache1Destroy (int *) ;
 int pcache1EnterMutex (TYPE_2__*) ;
 int pcache1LeaveMutex (TYPE_2__*) ;
 int pcache1ResizeHash (TYPE_3__*) ;
 scalar_t__ sqlite3MallocZero (int) ;

__attribute__((used)) static sqlite3_pcache *pcache1Create(int szPage, int szExtra, int bPurgeable){
  PCache1 *pCache;
  PGroup *pGroup;
  int sz;

  assert( (szPage & (szPage-1))==0 && szPage>=512 && szPage<=65536 );
  assert( szExtra < 300 );

  sz = sizeof(PCache1) + sizeof(PGroup)*pcache1.separateCache;
  pCache = (PCache1 *)sqlite3MallocZero(sz);
  if( pCache ){
    if( pcache1.separateCache ){
      pGroup = (PGroup*)&pCache[1];
      pGroup->mxPinned = 10;
    }else{
      pGroup = &pcache1.grp;
    }
    pcache1EnterMutex(pGroup);
    if( pGroup->lru.isAnchor==0 ){
      pGroup->lru.isAnchor = 1;
      pGroup->lru.pLruPrev = pGroup->lru.pLruNext = &pGroup->lru;
    }
    pCache->pGroup = pGroup;
    pCache->szPage = szPage;
    pCache->szExtra = szExtra;
    pCache->szAlloc = szPage + szExtra + ROUND8(sizeof(PgHdr1));
    pCache->bPurgeable = (bPurgeable ? 1 : 0);
    pcache1ResizeHash(pCache);
    if( bPurgeable ){
      pCache->nMin = 10;
      pGroup->nMinPage += pCache->nMin;
      pGroup->mxPinned = pGroup->nMaxPage + 10 - pGroup->nMinPage;
      pCache->pnPurgeable = &pGroup->nPurgeable;
    }else{
      pCache->pnPurgeable = &pCache->nPurgeableDummy;
    }
    pcache1LeaveMutex(pGroup);
    if( pCache->nHash==0 ){
      pcache1Destroy((sqlite3_pcache*)pCache);
      pCache = 0;
    }
  }
  return (sqlite3_pcache *)pCache;
}
