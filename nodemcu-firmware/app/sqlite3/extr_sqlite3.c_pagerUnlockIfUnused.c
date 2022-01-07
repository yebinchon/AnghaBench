
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ nMmapOut; int pPCache; } ;
typedef TYPE_1__ Pager ;


 int pagerUnlockAndRollback (TYPE_1__*) ;
 scalar_t__ sqlite3PcacheRefCount (int ) ;

__attribute__((used)) static void pagerUnlockIfUnused(Pager *pPager){
  if( pPager->nMmapOut==0 && (sqlite3PcacheRefCount(pPager->pPCache)==0) ){
    pagerUnlockAndRollback(pPager);
  }
}
