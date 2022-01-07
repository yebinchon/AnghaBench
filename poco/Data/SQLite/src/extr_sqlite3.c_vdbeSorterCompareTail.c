
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int UnpackedRecord ;
struct TYPE_5__ {TYPE_1__* pSorter; int * pUnpacked; } ;
struct TYPE_4__ {int pKeyInfo; } ;
typedef TYPE_2__ SortSubtask ;


 int sqlite3VdbeRecordCompareWithSkip (int,void const*,int *,int) ;
 int sqlite3VdbeRecordUnpack (int ,int,void const*,int *) ;

__attribute__((used)) static int vdbeSorterCompareTail(
  SortSubtask *pTask,
  int *pbKey2Cached,
  const void *pKey1, int nKey1,
  const void *pKey2, int nKey2
){
  UnpackedRecord *r2 = pTask->pUnpacked;
  if( *pbKey2Cached==0 ){
    sqlite3VdbeRecordUnpack(pTask->pSorter->pKeyInfo, nKey2, pKey2, r2);
    *pbKey2Cached = 1;
  }
  return sqlite3VdbeRecordCompareWithSkip(nKey1, pKey1, r2, 1);
}
