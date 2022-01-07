
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_pcache ;
struct TYPE_3__ {unsigned int iMaxKey; int pGroup; } ;
typedef TYPE_1__ PCache1 ;


 int pcache1EnterMutex (int ) ;
 int pcache1LeaveMutex (int ) ;
 int pcache1TruncateUnsafe (TYPE_1__*,unsigned int) ;

__attribute__((used)) static void pcache1Truncate(sqlite3_pcache *p, unsigned int iLimit){
  PCache1 *pCache = (PCache1 *)p;
  pcache1EnterMutex(pCache->pGroup);
  if( iLimit<=pCache->iMaxKey ){
    pcache1TruncateUnsafe(pCache, iLimit);
    pCache->iMaxKey = iLimit-1;
  }
  pcache1LeaveMutex(pCache->pGroup);
}
