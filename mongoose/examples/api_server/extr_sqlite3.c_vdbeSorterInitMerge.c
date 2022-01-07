
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int sqlite3 ;
typedef int i64 ;
struct TYPE_8__ {int iEof; } ;
typedef TYPE_1__ VdbeSorterIter ;
struct TYPE_9__ {int nTree; int iWriteOff; int iReadOff; TYPE_1__* aIter; } ;
typedef TYPE_2__ VdbeSorter ;
struct TYPE_10__ {TYPE_2__* pSorter; } ;
typedef TYPE_3__ VdbeCursor ;


 int SORTER_MAX_MERGE_COUNT ;
 int SQLITE_OK ;
 int assert (int) ;
 int vdbeSorterDoCompare (TYPE_3__ const*,int) ;
 int vdbeSorterIterInit (int *,TYPE_2__*,int ,TYPE_1__*,int *) ;

__attribute__((used)) static int vdbeSorterInitMerge(
  sqlite3 *db,
  const VdbeCursor *pCsr,
  i64 *pnByte
){
  VdbeSorter *pSorter = pCsr->pSorter;
  int rc = SQLITE_OK;
  int i;
  i64 nByte = 0;


  for(i=0; i<SORTER_MAX_MERGE_COUNT; i++){
    VdbeSorterIter *pIter = &pSorter->aIter[i];
    rc = vdbeSorterIterInit(db, pSorter, pSorter->iReadOff, pIter, &nByte);
    pSorter->iReadOff = pIter->iEof;
    assert( rc!=SQLITE_OK || pSorter->iReadOff<=pSorter->iWriteOff );
    if( rc!=SQLITE_OK || pSorter->iReadOff>=pSorter->iWriteOff ) break;
  }


  for(i=pSorter->nTree-1; rc==SQLITE_OK && i>0; i--){
    rc = vdbeSorterDoCompare(pCsr, i);
  }

  *pnByte = nByte;
  return rc;
}
