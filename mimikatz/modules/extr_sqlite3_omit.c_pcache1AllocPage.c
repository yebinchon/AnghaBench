
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


typedef int u8 ;
struct TYPE_16__ {int mutex; } ;
struct TYPE_15__ {scalar_t__ nPage; size_t szPage; size_t szAlloc; int * pnPurgeable; TYPE_6__* pGroup; scalar_t__ szExtra; TYPE_2__* pFree; } ;
struct TYPE_13__ {TYPE_2__* pExtra; void* pBuf; } ;
struct TYPE_14__ {scalar_t__ isAnchor; scalar_t__ isBulkLocal; TYPE_1__ page; struct TYPE_14__* pNext; } ;
struct TYPE_12__ {scalar_t__ separateCache; TYPE_6__ grp; } ;
typedef TYPE_2__ PgHdr1 ;
typedef TYPE_3__ PCache1 ;


 int assert (int) ;
 TYPE_11__ pcache1 ;
 void* pcache1Alloc (size_t) ;
 int pcache1EnterMutex (TYPE_6__*) ;
 int pcache1Free (void*) ;
 scalar_t__ pcache1InitBulk (TYPE_3__*) ;
 int pcache1LeaveMutex (TYPE_6__*) ;
 int sqlite3BeginBenignMalloc () ;
 int sqlite3EndBenignMalloc () ;
 TYPE_2__* sqlite3Malloc (scalar_t__) ;
 int sqlite3_free (TYPE_2__*) ;
 int sqlite3_mutex_held (int ) ;

__attribute__((used)) static PgHdr1 *pcache1AllocPage(PCache1 *pCache, int benignMalloc){
  PgHdr1 *p = 0;
  void *pPg;

  assert( sqlite3_mutex_held(pCache->pGroup->mutex) );
  if( pCache->pFree || (pCache->nPage==0 && pcache1InitBulk(pCache)) ){
    p = pCache->pFree;
    pCache->pFree = p->pNext;
    p->pNext = 0;
  }else{
    if( benignMalloc ){ sqlite3BeginBenignMalloc(); }
    pPg = pcache1Alloc(pCache->szAlloc);
    p = (PgHdr1 *)&((u8 *)pPg)[pCache->szPage];

    if( benignMalloc ){ sqlite3EndBenignMalloc(); }



    if( pPg==0 ) return 0;
    p->page.pBuf = pPg;
    p->page.pExtra = &p[1];
    p->isBulkLocal = 0;
    p->isAnchor = 0;
  }
  (*pCache->pnPurgeable)++;
  return p;
}
