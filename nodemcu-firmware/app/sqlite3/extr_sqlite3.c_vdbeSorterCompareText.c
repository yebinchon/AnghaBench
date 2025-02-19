
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_8__ {TYPE_2__* pSorter; } ;
struct TYPE_7__ {TYPE_1__* pKeyInfo; } ;
struct TYPE_6__ {int nField; scalar_t__* aSortOrder; } ;
typedef TYPE_3__ SortSubtask ;


 int MIN (int,int) ;
 int getVarint32 (size_t const*,int) ;
 int memcmp (size_t const* const,size_t const* const,int ) ;
 int vdbeSorterCompareTail (TYPE_3__*,int*,void const*,int,void const*,int) ;

__attribute__((used)) static int vdbeSorterCompareText(
  SortSubtask *pTask,
  int *pbKey2Cached,
  const void *pKey1, int nKey1,
  const void *pKey2, int nKey2
){
  const u8 * const p1 = (const u8 * const)pKey1;
  const u8 * const p2 = (const u8 * const)pKey2;
  const u8 * const v1 = &p1[ p1[0] ];
  const u8 * const v2 = &p2[ p2[0] ];

  int n1;
  int n2;
  int res;

  getVarint32(&p1[1], n1); n1 = (n1 - 13) / 2;
  getVarint32(&p2[1], n2); n2 = (n2 - 13) / 2;
  res = memcmp(v1, v2, MIN(n1, n2));
  if( res==0 ){
    res = n1 - n2;
  }

  if( res==0 ){
    if( pTask->pSorter->pKeyInfo->nField>1 ){
      res = vdbeSorterCompareTail(
          pTask, pbKey2Cached, pKey1, nKey1, pKey2, nKey2
      );
    }
  }else{
    if( pTask->pSorter->pKeyInfo->aSortOrder[0] ){
      res = res * -1;
    }
  }

  return res;
}
