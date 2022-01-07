
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int nKeyField; } ;
struct TYPE_8__ {scalar_t__ errCode; int nField; } ;
struct TYPE_7__ {TYPE_4__* pUnpacked; TYPE_1__* pSorter; } ;
struct TYPE_6__ {TYPE_5__* pKeyInfo; } ;
typedef TYPE_2__ SortSubtask ;


 int SQLITE_NOMEM_BKPT ;
 int SQLITE_OK ;
 TYPE_4__* sqlite3VdbeAllocUnpackedRecord (TYPE_5__*) ;

__attribute__((used)) static int vdbeSortAllocUnpacked(SortSubtask *pTask){
  if( pTask->pUnpacked==0 ){
    pTask->pUnpacked = sqlite3VdbeAllocUnpackedRecord(pTask->pSorter->pKeyInfo);
    if( pTask->pUnpacked==0 ) return SQLITE_NOMEM_BKPT;
    pTask->pUnpacked->nField = pTask->pSorter->pKeyInfo->nKeyField;
    pTask->pUnpacked->errCode = 0;
  }
  return SQLITE_OK;
}
