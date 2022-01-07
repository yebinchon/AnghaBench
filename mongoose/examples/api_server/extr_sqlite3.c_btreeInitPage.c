
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t u8 ;
typedef size_t u16 ;
struct TYPE_9__ {int pageSize; int usableSize; int mutex; } ;
struct TYPE_8__ {scalar_t__ pgno; scalar_t__ aData; int isInit; size_t hdrOffset; size_t maskPage; size_t cellOffset; int leaf; size_t* aDataEnd; size_t* aCellIdx; int nCell; size_t nFree; scalar_t__ nOverflow; TYPE_2__* pBt; int pDbPage; } ;
typedef TYPE_1__ MemPage ;
typedef TYPE_2__ BtShared ;


 int MX_CELL (TYPE_2__*) ;
 int SQLITE_CORRUPT_BKPT ;
 int SQLITE_OK ;
 int assert (int) ;
 int cellSizePtr (TYPE_1__*,size_t*) ;
 scalar_t__ decodeFlags (TYPE_1__*,size_t) ;
 void* get2byte (size_t*) ;
 int get2byteNotZero (size_t*) ;
 scalar_t__ sqlite3PagerGetData (int ) ;
 TYPE_1__* sqlite3PagerGetExtra (int ) ;
 scalar_t__ sqlite3PagerPagenumber (int ) ;
 int sqlite3_mutex_held (int ) ;
 int testcase (int) ;

__attribute__((used)) static int btreeInitPage(MemPage *pPage){

  assert( pPage->pBt!=0 );
  assert( sqlite3_mutex_held(pPage->pBt->mutex) );
  assert( pPage->pgno==sqlite3PagerPagenumber(pPage->pDbPage) );
  assert( pPage == sqlite3PagerGetExtra(pPage->pDbPage) );
  assert( pPage->aData == sqlite3PagerGetData(pPage->pDbPage) );

  if( !pPage->isInit ){
    u16 pc;
    u8 hdr;
    u8 *data;
    BtShared *pBt;
    int usableSize;
    u16 cellOffset;
    int nFree;
    int top;
    int iCellFirst;
    int iCellLast;

    pBt = pPage->pBt;

    hdr = pPage->hdrOffset;
    data = pPage->aData;
    if( decodeFlags(pPage, data[hdr]) ) return SQLITE_CORRUPT_BKPT;
    assert( pBt->pageSize>=512 && pBt->pageSize<=65536 );
    pPage->maskPage = (u16)(pBt->pageSize - 1);
    pPage->nOverflow = 0;
    usableSize = pBt->usableSize;
    pPage->cellOffset = cellOffset = hdr + 12 - 4*pPage->leaf;
    pPage->aDataEnd = &data[usableSize];
    pPage->aCellIdx = &data[cellOffset];
    top = get2byteNotZero(&data[hdr+5]);
    pPage->nCell = get2byte(&data[hdr+3]);
    if( pPage->nCell>MX_CELL(pBt) ){

      return SQLITE_CORRUPT_BKPT;
    }
    testcase( pPage->nCell==MX_CELL(pBt) );
    iCellFirst = cellOffset + 2*pPage->nCell;
    iCellLast = usableSize - 4;
    pc = get2byte(&data[hdr+1]);
    nFree = data[hdr+7] + top;
    while( pc>0 ){
      u16 next, size;
      if( pc<iCellFirst || pc>iCellLast ){

        return SQLITE_CORRUPT_BKPT;
      }
      next = get2byte(&data[pc]);
      size = get2byte(&data[pc+2]);
      if( (next>0 && next<=pc+size+3) || pc+size>usableSize ){


        return SQLITE_CORRUPT_BKPT;
      }
      nFree = nFree + size;
      pc = next;
    }
    if( nFree>usableSize ){
      return SQLITE_CORRUPT_BKPT;
    }
    pPage->nFree = (u16)(nFree - iCellFirst);
    pPage->isInit = 1;
  }
  return SQLITE_OK;
}
