
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {unsigned int nHash; int nPage; TYPE_2__** apHash; TYPE_1__* pGroup; } ;
struct TYPE_7__ {unsigned int iKey; struct TYPE_7__* pNext; TYPE_3__* pCache; } ;
struct TYPE_6__ {int mutex; } ;
typedef TYPE_2__ PgHdr1 ;
typedef TYPE_3__ PCache1 ;


 int assert (int ) ;
 int pcache1FreePage (TYPE_2__*) ;
 int sqlite3_mutex_held (int ) ;

__attribute__((used)) static void pcache1RemoveFromHash(PgHdr1 *pPage, int freeFlag){
  unsigned int h;
  PCache1 *pCache = pPage->pCache;
  PgHdr1 **pp;

  assert( sqlite3_mutex_held(pCache->pGroup->mutex) );
  h = pPage->iKey % pCache->nHash;
  for(pp=&pCache->apHash[h]; (*pp)!=pPage; pp=&(*pp)->pNext);
  *pp = (*pp)->pNext;

  pCache->nPage--;
  if( freeFlag ) pcache1FreePage(pPage);
}
