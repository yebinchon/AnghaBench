
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ pFile; int nKey; int aKey; } ;
typedef TYPE_1__ VdbeSorterIter ;
struct TYPE_7__ {int nTree; int* aTree; scalar_t__ pUnpacked; TYPE_1__* aIter; } ;
typedef TYPE_2__ VdbeSorter ;
struct TYPE_8__ {TYPE_2__* pSorter; } ;
typedef TYPE_3__ VdbeCursor ;


 int SQLITE_OK ;
 int assert (int) ;
 int vdbeSorterCompare (TYPE_3__ const*,int ,int ,int ,int ,int ,int*) ;

__attribute__((used)) static int vdbeSorterDoCompare(const VdbeCursor *pCsr, int iOut){
  VdbeSorter *pSorter = pCsr->pSorter;
  int i1;
  int i2;
  int iRes;
  VdbeSorterIter *p1;
  VdbeSorterIter *p2;

  assert( iOut<pSorter->nTree && iOut>0 );

  if( iOut>=(pSorter->nTree/2) ){
    i1 = (iOut - pSorter->nTree/2) * 2;
    i2 = i1 + 1;
  }else{
    i1 = pSorter->aTree[iOut*2];
    i2 = pSorter->aTree[iOut*2+1];
  }

  p1 = &pSorter->aIter[i1];
  p2 = &pSorter->aIter[i2];

  if( p1->pFile==0 ){
    iRes = i2;
  }else if( p2->pFile==0 ){
    iRes = i1;
  }else{
    int res;
    assert( pCsr->pSorter->pUnpacked!=0 );
    vdbeSorterCompare(
        pCsr, 0, p1->aKey, p1->nKey, p2->aKey, p2->nKey, &res
    );
    if( res<=0 ){
      iRes = i1;
    }else{
      iRes = i2;
    }
  }

  pSorter->aTree[iOut] = iRes;
  return SQLITE_OK;
}
