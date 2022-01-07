
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void* pStart; void* pEnd; scalar_t__ nFreeSlot; int bUnderPressure; scalar_t__ nReserve; scalar_t__ nSlot; int mutex; TYPE_1__* pFree; } ;
struct TYPE_3__ {struct TYPE_3__* pNext; } ;
typedef TYPE_1__ PgFreeslot ;


 int MEMTYPE_HEAP ;
 int MEMTYPE_PCACHE ;
 int SQLITE_STATUS_PAGECACHE_OVERFLOW ;
 int SQLITE_STATUS_PAGECACHE_USED ;
 int assert (int) ;
 TYPE_2__ pcache1 ;
 int sqlite3MallocSize (void*) ;
 int sqlite3MemdebugHasType (void*,int ) ;
 int sqlite3MemdebugSetType (void*,int ) ;
 int sqlite3StatusAdd (int ,int) ;
 int sqlite3_free (void*) ;
 int sqlite3_mutex_enter (int ) ;
 int sqlite3_mutex_leave (int ) ;

__attribute__((used)) static int pcache1Free(void *p){
  int nFreed = 0;
  if( p==0 ) return 0;
  if( p>=pcache1.pStart && p<pcache1.pEnd ){
    PgFreeslot *pSlot;
    sqlite3_mutex_enter(pcache1.mutex);
    sqlite3StatusAdd(SQLITE_STATUS_PAGECACHE_USED, -1);
    pSlot = (PgFreeslot*)p;
    pSlot->pNext = pcache1.pFree;
    pcache1.pFree = pSlot;
    pcache1.nFreeSlot++;
    pcache1.bUnderPressure = pcache1.nFreeSlot<pcache1.nReserve;
    assert( pcache1.nFreeSlot<=pcache1.nSlot );
    sqlite3_mutex_leave(pcache1.mutex);
  }else{
    assert( sqlite3MemdebugHasType(p, MEMTYPE_PCACHE) );
    sqlite3MemdebugSetType(p, MEMTYPE_HEAP);
    nFreed = sqlite3MallocSize(p);

    sqlite3_mutex_enter(pcache1.mutex);
    sqlite3StatusAdd(SQLITE_STATUS_PAGECACHE_OVERFLOW, -nFreed);
    sqlite3_mutex_leave(pcache1.mutex);

    sqlite3_free(p);
  }
  return nFreed;
}
