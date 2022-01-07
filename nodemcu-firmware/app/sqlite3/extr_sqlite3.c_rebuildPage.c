
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int const u16 ;
struct TYPE_7__ {int hdrOffset; int const (* xCellSize ) (TYPE_2__*,int *) ;int nCell; scalar_t__ nOverflow; TYPE_1__* pBt; int * aCellIdx; int * aData; } ;
struct TYPE_6__ {int usableSize; int pPager; } ;
typedef TYPE_2__ MemPage ;


 scalar_t__ CORRUPT_DB ;
 int SQLITE_CORRUPT_BKPT ;
 int SQLITE_OK ;
 scalar_t__ SQLITE_WITHIN (int *,int * const,int * const) ;
 int assert (int) ;
 int get2byte (int *) ;
 int memcpy (int *,int *,int const) ;
 int put2byte (int *,int) ;
 int * sqlite3PagerTempSpace (int ) ;
 int const stub1 (TYPE_2__*,int *) ;
 int const stub2 (TYPE_2__*,int *) ;
 int testcase (int) ;

__attribute__((used)) static int rebuildPage(
  MemPage *pPg,
  int nCell,
  u8 **apCell,
  u16 *szCell
){
  const int hdr = pPg->hdrOffset;
  u8 * const aData = pPg->aData;
  const int usableSize = pPg->pBt->usableSize;
  u8 * const pEnd = &aData[usableSize];
  int i;
  u8 *pCellptr = pPg->aCellIdx;
  u8 *pTmp = sqlite3PagerTempSpace(pPg->pBt->pPager);
  u8 *pData;

  i = get2byte(&aData[hdr+5]);
  memcpy(&pTmp[i], &aData[i], usableSize - i);

  pData = pEnd;
  for(i=0; i<nCell; i++){
    u8 *pCell = apCell[i];
    if( SQLITE_WITHIN(pCell,aData,pEnd) ){
      pCell = &pTmp[pCell - aData];
    }
    pData -= szCell[i];
    put2byte(pCellptr, (pData - aData));
    pCellptr += 2;
    if( pData < pCellptr ) return SQLITE_CORRUPT_BKPT;
    memcpy(pData, pCell, szCell[i]);
    assert( szCell[i]==pPg->xCellSize(pPg, pCell) || CORRUPT_DB );
    testcase( szCell[i]!=pPg->xCellSize(pPg,pCell) );
  }


  pPg->nCell = nCell;
  pPg->nOverflow = 0;

  put2byte(&aData[hdr+1], 0);
  put2byte(&aData[hdr+3], pPg->nCell);
  put2byte(&aData[hdr+5], pData - aData);
  aData[hdr+7] = 0x00;
  return SQLITE_OK;
}
