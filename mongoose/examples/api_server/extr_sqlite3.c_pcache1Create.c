
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int sqlite3_pcache ;
struct TYPE_7__ {int mxPinned; int nMinPage; int nMaxPage; } ;
struct TYPE_10__ {TYPE_1__ grp; } ;
struct TYPE_9__ {scalar_t__ bCoreMutex; } ;
struct TYPE_8__ {int szPage; int szExtra; int bPurgeable; int nMin; TYPE_1__* pGroup; } ;
typedef TYPE_1__ PGroup ;
typedef TYPE_2__ PCache1 ;


 int assert (int) ;
 TYPE_6__ pcache1 ;
 int pcache1EnterMutex (TYPE_1__*) ;
 int pcache1LeaveMutex (TYPE_1__*) ;
 TYPE_3__ sqlite3GlobalConfig ;
 scalar_t__ sqlite3MallocZero (int) ;

__attribute__((used)) static sqlite3_pcache *pcache1Create(int szPage, int szExtra, int bPurgeable){
  PCache1 *pCache;
  PGroup *pGroup;
  int sz;
  const int separateCache = 0;




  assert( (szPage & (szPage-1))==0 && szPage>=512 && szPage<=65536 );
  assert( szExtra < 300 );

  sz = sizeof(PCache1) + sizeof(PGroup)*separateCache;
  pCache = (PCache1 *)sqlite3MallocZero(sz);
  if( pCache ){
    if( separateCache ){
      pGroup = (PGroup*)&pCache[1];
      pGroup->mxPinned = 10;
    }else{
      pGroup = &pcache1.grp;
    }
    pCache->pGroup = pGroup;
    pCache->szPage = szPage;
    pCache->szExtra = szExtra;
    pCache->bPurgeable = (bPurgeable ? 1 : 0);
    if( bPurgeable ){
      pCache->nMin = 10;
      pcache1EnterMutex(pGroup);
      pGroup->nMinPage += pCache->nMin;
      pGroup->mxPinned = pGroup->nMaxPage + 10 - pGroup->nMinPage;
      pcache1LeaveMutex(pGroup);
    }
  }
  return (sqlite3_pcache *)pCache;
}
