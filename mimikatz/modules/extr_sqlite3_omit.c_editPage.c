
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_17__ {int (* xCellSize ) (TYPE_4__*,int *) ;} ;
struct TYPE_16__ {int ** apCell; TYPE_4__* pRef; } ;
struct TYPE_15__ {int hdrOffset; int nCell; int nOverflow; int* aiOvfl; TYPE_1__* pBt; int * aCellIdx; int * aData; } ;
struct TYPE_14__ {size_t usableSize; int pPager; } ;
typedef TYPE_2__ MemPage ;
typedef TYPE_3__ CellArray ;


 scalar_t__ CORRUPT_DB ;
 int MIN (int,int) ;
 int SQLITE_CORRUPT_BKPT ;
 int SQLITE_OK ;
 scalar_t__ SQLITE_WITHIN (int *,int * const,int *) ;
 int assert (int) ;
 int get2byteAligned (int *) ;
 size_t get2byteNotZero (int *) ;
 scalar_t__ memcmp (int *,int *,int ) ;
 int memcpy (int *,int * const,size_t) ;
 int memmove (int *,int *,int) ;
 int pageFreeArray (TYPE_2__*,int,int,TYPE_3__*) ;
 scalar_t__ pageInsertArray (TYPE_2__*,int *,int **,int *,int,int,TYPE_3__*) ;
 int populateCellCache (TYPE_3__*,int,int) ;
 int put2byte (int *,int) ;
 int rebuildPage (TYPE_3__*,int,int,TYPE_2__*) ;
 int * sqlite3PagerTempSpace (int ) ;
 int stub1 (TYPE_4__*,int *) ;

__attribute__((used)) static int editPage(
  MemPage *pPg,
  int iOld,
  int iNew,
  int nNew,
  CellArray *pCArray
){
  u8 * const aData = pPg->aData;
  const int hdr = pPg->hdrOffset;
  u8 *pBegin = &pPg->aCellIdx[nNew * 2];
  int nCell = pPg->nCell;
  u8 *pData;
  u8 *pCellptr;
  int i;
  int iOldEnd = iOld + pPg->nCell + pPg->nOverflow;
  int iNewEnd = iNew + nNew;







  assert( nCell>=0 );
  if( iOld<iNew ){
    int nShift = pageFreeArray(pPg, iOld, iNew-iOld, pCArray);
    if( nShift>nCell ) return SQLITE_CORRUPT_BKPT;
    memmove(pPg->aCellIdx, &pPg->aCellIdx[nShift*2], nCell*2);
    nCell -= nShift;
  }
  if( iNewEnd < iOldEnd ){
    int nTail = pageFreeArray(pPg, iNewEnd, iOldEnd - iNewEnd, pCArray);
    assert( nCell>=nTail );
    nCell -= nTail;
  }

  pData = &aData[get2byteNotZero(&aData[hdr+5])];
  if( pData<pBegin ) goto editpage_fail;


  if( iNew<iOld ){
    int nAdd = MIN(nNew,iOld-iNew);
    assert( (iOld-iNew)<nNew || nCell==0 || CORRUPT_DB );
    assert( nAdd>=0 );
    pCellptr = pPg->aCellIdx;
    memmove(&pCellptr[nAdd*2], pCellptr, nCell*2);
    if( pageInsertArray(
          pPg, pBegin, &pData, pCellptr,
          iNew, nAdd, pCArray
    ) ) goto editpage_fail;
    nCell += nAdd;
  }


  for(i=0; i<pPg->nOverflow; i++){
    int iCell = (iOld + pPg->aiOvfl[i]) - iNew;
    if( iCell>=0 && iCell<nNew ){
      pCellptr = &pPg->aCellIdx[iCell * 2];
      assert( nCell>=iCell );
      memmove(&pCellptr[2], pCellptr, (nCell - iCell) * 2);
      nCell++;
      if( pageInsertArray(
            pPg, pBegin, &pData, pCellptr,
            iCell+iNew, 1, pCArray
      ) ) goto editpage_fail;
    }
  }


  assert( nCell>=0 );
  pCellptr = &pPg->aCellIdx[nCell*2];
  if( pageInsertArray(
        pPg, pBegin, &pData, pCellptr,
        iNew+nCell, nNew-nCell, pCArray
  ) ) goto editpage_fail;

  pPg->nCell = nNew;
  pPg->nOverflow = 0;

  put2byte(&aData[hdr+3], pPg->nCell);
  put2byte(&aData[hdr+5], pData - aData);
  return SQLITE_OK;
 editpage_fail:

  populateCellCache(pCArray, iNew, nNew);
  return rebuildPage(pCArray, iNew, nNew, pPg);
}
