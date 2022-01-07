
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int nKey; void* aKey; } ;
typedef TYPE_2__ VdbeSorterIter ;
struct TYPE_7__ {size_t* aTree; TYPE_1__* pRecord; TYPE_2__* aIter; } ;
typedef TYPE_3__ VdbeSorter ;
struct TYPE_5__ {int nVal; void* pVal; } ;



__attribute__((used)) static void *vdbeSorterRowkey(
  const VdbeSorter *pSorter,
  int *pnKey
){
  void *pKey;
  if( pSorter->aTree ){
    VdbeSorterIter *pIter;
    pIter = &pSorter->aIter[ pSorter->aTree[1] ];
    *pnKey = pIter->nKey;
    pKey = pIter->aKey;
  }else{
    *pnKey = pSorter->pRecord->nVal;
    pKey = pSorter->pRecord->pVal;
  }
  return pKey;
}
