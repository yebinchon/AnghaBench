
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct TYPE_7__ {int nCell; int hdrOffset; scalar_t__ nFree; scalar_t__ childPtrSize; TYPE_1__* pBt; scalar_t__* aCellIdx; scalar_t__* aData; int pDbPage; } ;
struct TYPE_6__ {scalar_t__ usableSize; int mutex; } ;
typedef TYPE_2__ MemPage ;


 scalar_t__ CORRUPT_DB ;
 int SQLITE_CORRUPT_BKPT ;
 int assert (int) ;
 int cellSize (TYPE_2__*,int) ;
 int freeSpace (TYPE_2__*,scalar_t__,int) ;
 scalar_t__ get2byte (scalar_t__*) ;
 int memmove (scalar_t__*,scalar_t__*,int) ;
 int memset (scalar_t__*,int ,int) ;
 int put2byte (scalar_t__*,int) ;
 int sqlite3PagerIswriteable (int ) ;
 int sqlite3_mutex_held (int ) ;
 int testcase (int) ;

__attribute__((used)) static void dropCell(MemPage *pPage, int idx, int sz, int *pRC){
  u32 pc;
  u8 *data;
  u8 *ptr;
  int rc;
  int hdr;

  if( *pRC ) return;
  assert( idx>=0 && idx<pPage->nCell );
  assert( CORRUPT_DB || sz==cellSize(pPage, idx) );
  assert( sqlite3PagerIswriteable(pPage->pDbPage) );
  assert( sqlite3_mutex_held(pPage->pBt->mutex) );
  data = pPage->aData;
  ptr = &pPage->aCellIdx[2*idx];
  pc = get2byte(ptr);
  hdr = pPage->hdrOffset;
  testcase( pc==get2byte(&data[hdr+5]) );
  testcase( pc+sz==pPage->pBt->usableSize );
  if( pc+sz > pPage->pBt->usableSize ){
    *pRC = SQLITE_CORRUPT_BKPT;
    return;
  }
  rc = freeSpace(pPage, pc, sz);
  if( rc ){
    *pRC = rc;
    return;
  }
  pPage->nCell--;
  if( pPage->nCell==0 ){
    memset(&data[hdr+1], 0, 4);
    data[hdr+7] = 0;
    put2byte(&data[hdr+5], pPage->pBt->usableSize);
    pPage->nFree = pPage->pBt->usableSize - pPage->hdrOffset
                       - pPage->childPtrSize - 8;
  }else{
    memmove(ptr, ptr+2, 2*(pPage->nCell - idx));
    put2byte(&data[hdr+3], pPage->nCell);
    pPage->nFree += 2;
  }
}
