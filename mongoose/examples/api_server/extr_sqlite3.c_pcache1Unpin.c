
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int sqlite3_pcache_page ;
typedef int sqlite3_pcache ;
struct TYPE_10__ {TYPE_2__* pGroup; int nRecyclable; } ;
struct TYPE_9__ {scalar_t__ nCurrentPage; scalar_t__ nMaxPage; TYPE_1__* pLruHead; TYPE_1__* pLruTail; } ;
struct TYPE_8__ {scalar_t__ pLruPrev; struct TYPE_8__* pLruNext; TYPE_3__* pCache; } ;
typedef TYPE_1__ PgHdr1 ;
typedef TYPE_2__ PGroup ;
typedef TYPE_3__ PCache1 ;


 int assert (int) ;
 int pcache1EnterMutex (TYPE_2__*) ;
 int pcache1FreePage (TYPE_1__*) ;
 int pcache1LeaveMutex (TYPE_2__*) ;
 int pcache1RemoveFromHash (TYPE_1__*) ;

__attribute__((used)) static void pcache1Unpin(
  sqlite3_pcache *p,
  sqlite3_pcache_page *pPg,
  int reuseUnlikely
){
  PCache1 *pCache = (PCache1 *)p;
  PgHdr1 *pPage = (PgHdr1 *)pPg;
  PGroup *pGroup = pCache->pGroup;

  assert( pPage->pCache==pCache );
  pcache1EnterMutex(pGroup);




  assert( pPage->pLruPrev==0 && pPage->pLruNext==0 );
  assert( pGroup->pLruHead!=pPage && pGroup->pLruTail!=pPage );

  if( reuseUnlikely || pGroup->nCurrentPage>pGroup->nMaxPage ){
    pcache1RemoveFromHash(pPage);
    pcache1FreePage(pPage);
  }else{

    if( pGroup->pLruHead ){
      pGroup->pLruHead->pLruPrev = pPage;
      pPage->pLruNext = pGroup->pLruHead;
      pGroup->pLruHead = pPage;
    }else{
      pGroup->pLruTail = pPage;
      pGroup->pLruHead = pPage;
    }
    pCache->nRecyclable++;
  }

  pcache1LeaveMutex(pCache->pGroup);
}
