
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_18__ {TYPE_2__* pUnpacked; int pSorter; int xCompare; } ;
struct TYPE_17__ {TYPE_3__* pList; int * aMemory; } ;
struct TYPE_14__ {size_t iNext; TYPE_3__* pNext; } ;
struct TYPE_16__ {TYPE_1__ u; } ;
struct TYPE_15__ {int errCode; } ;
typedef TYPE_3__ SorterRecord ;
typedef TYPE_4__ SorterList ;
typedef TYPE_5__ SortSubtask ;


 int SQLITE_NOMEM ;
 int SQLITE_NOMEM_BKPT ;
 int SQLITE_OK ;
 int assert (int) ;
 size_t sqlite3MallocSize (int *) ;
 scalar_t__ sqlite3MallocZero (int) ;
 int sqlite3_free (TYPE_3__**) ;
 int vdbeSortAllocUnpacked (TYPE_5__*) ;
 int vdbeSorterGetCompare (int ) ;
 TYPE_3__* vdbeSorterMerge (TYPE_5__*,TYPE_3__*,TYPE_3__*) ;

__attribute__((used)) static int vdbeSorterSort(SortSubtask *pTask, SorterList *pList){
  int i;
  SorterRecord **aSlot;
  SorterRecord *p;
  int rc;

  rc = vdbeSortAllocUnpacked(pTask);
  if( rc!=SQLITE_OK ) return rc;

  p = pList->pList;
  pTask->xCompare = vdbeSorterGetCompare(pTask->pSorter);

  aSlot = (SorterRecord **)sqlite3MallocZero(64 * sizeof(SorterRecord *));
  if( !aSlot ){
    return SQLITE_NOMEM_BKPT;
  }

  while( p ){
    SorterRecord *pNext;
    if( pList->aMemory ){
      if( (u8*)p==pList->aMemory ){
        pNext = 0;
      }else{
        assert( p->u.iNext<sqlite3MallocSize(pList->aMemory) );
        pNext = (SorterRecord*)&pList->aMemory[p->u.iNext];
      }
    }else{
      pNext = p->u.pNext;
    }

    p->u.pNext = 0;
    for(i=0; aSlot[i]; i++){
      p = vdbeSorterMerge(pTask, p, aSlot[i]);
      aSlot[i] = 0;
    }
    aSlot[i] = p;
    p = pNext;
  }

  p = 0;
  for(i=0; i<64; i++){
    if( aSlot[i]==0 ) continue;
    p = p ? vdbeSorterMerge(pTask, p, aSlot[i]) : aSlot[i];
  }
  pList->pList = p;

  sqlite3_free(aSlot);
  assert( pTask->pUnpacked->errCode==SQLITE_OK
       || pTask->pUnpacked->errCode==SQLITE_NOMEM
  );
  return pTask->pUnpacked->errCode;
}
