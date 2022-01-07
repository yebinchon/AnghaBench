
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef unsigned char u8 ;
struct TYPE_6__ {scalar_t__ nOverflow; unsigned char* aData; int hdrOffset; int cellOffset; int nCell; int (* xCellSize ) (TYPE_2__*,unsigned char*) ;unsigned char nFree; int pDbPage; TYPE_1__* pBt; } ;
struct TYPE_5__ {int usableSize; int pPager; int mutex; } ;
typedef TYPE_2__ MemPage ;


 int SQLITE_CORRUPT_BKPT ;
 int SQLITE_MAX_PAGE_SIZE ;
 int SQLITE_OK ;
 int assert (int) ;
 int get2byte (unsigned char*) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int memmove (unsigned char*,unsigned char*,int) ;
 int memset (unsigned char*,int ,int) ;
 int put2byte (unsigned char*,int) ;
 int sqlite3PagerIswriteable (int ) ;
 unsigned char* sqlite3PagerTempSpace (int ) ;
 int sqlite3_mutex_held (int ) ;
 int stub1 (TYPE_2__*,unsigned char*) ;
 int testcase (int) ;

__attribute__((used)) static int defragmentPage(MemPage *pPage, int nMaxFrag){
  int i;
  int pc;
  int hdr;
  int size;
  int usableSize;
  int cellOffset;
  int cbrk;
  int nCell;
  unsigned char *data;
  unsigned char *temp;
  unsigned char *src;
  int iCellFirst;
  int iCellLast;

  assert( sqlite3PagerIswriteable(pPage->pDbPage) );
  assert( pPage->pBt!=0 );
  assert( pPage->pBt->usableSize <= SQLITE_MAX_PAGE_SIZE );
  assert( pPage->nOverflow==0 );
  assert( sqlite3_mutex_held(pPage->pBt->mutex) );
  temp = 0;
  src = data = pPage->aData;
  hdr = pPage->hdrOffset;
  cellOffset = pPage->cellOffset;
  nCell = pPage->nCell;
  assert( nCell==get2byte(&data[hdr+3]) );
  iCellFirst = cellOffset + 2*nCell;
  usableSize = pPage->pBt->usableSize;






  if( (int)data[hdr+7]<=nMaxFrag ){
    int iFree = get2byte(&data[hdr+1]);
    if( iFree ){
      int iFree2 = get2byte(&data[iFree]);







      assert( iFree2==0 || iFree2>iFree );
      assert( iFree+get2byte(&data[iFree+2]) <= usableSize );
      assert( iFree2==0 || iFree2+get2byte(&data[iFree2+2]) <= usableSize );

      if( 0==iFree2 || (data[iFree2]==0 && data[iFree2+1]==0) ){
        u8 *pEnd = &data[cellOffset + nCell*2];
        u8 *pAddr;
        int sz2 = 0;
        int sz = get2byte(&data[iFree+2]);
        int top = get2byte(&data[hdr+5]);
        if( iFree2 ){
          if( iFree+sz>iFree2 ) return SQLITE_CORRUPT_BKPT;
          sz2 = get2byte(&data[iFree2+2]);
          assert( iFree+sz+sz2+iFree2-(iFree+sz) <= usableSize );
          memmove(&data[iFree+sz+sz2], &data[iFree+sz], iFree2-(iFree+sz));
          sz += sz2;
        }
        cbrk = top+sz;
        assert( cbrk+(iFree-top) <= usableSize );
        memmove(&data[cbrk], &data[top], iFree-top);
        for(pAddr=&data[cellOffset]; pAddr<pEnd; pAddr+=2){
          pc = get2byte(pAddr);
          if( pc<iFree ){ put2byte(pAddr, pc+sz); }
          else if( pc<iFree2 ){ put2byte(pAddr, pc+sz2); }
        }
        goto defragment_out;
      }
    }
  }

  cbrk = usableSize;
  iCellLast = usableSize - 4;
  for(i=0; i<nCell; i++){
    u8 *pAddr;
    pAddr = &data[cellOffset + i*2];
    pc = get2byte(pAddr);
    testcase( pc==iCellFirst );
    testcase( pc==iCellLast );



    if( pc<iCellFirst || pc>iCellLast ){
      return SQLITE_CORRUPT_BKPT;
    }
    assert( pc>=iCellFirst && pc<=iCellLast );
    size = pPage->xCellSize(pPage, &src[pc]);
    cbrk -= size;
    if( cbrk<iCellFirst || pc+size>usableSize ){
      return SQLITE_CORRUPT_BKPT;
    }
    assert( cbrk+size<=usableSize && cbrk>=iCellFirst );
    testcase( cbrk+size==usableSize );
    testcase( pc+size==usableSize );
    put2byte(pAddr, cbrk);
    if( temp==0 ){
      int x;
      if( cbrk==pc ) continue;
      temp = sqlite3PagerTempSpace(pPage->pBt->pPager);
      x = get2byte(&data[hdr+5]);
      memcpy(&temp[x], &data[x], (cbrk+size) - x);
      src = temp;
    }
    memcpy(&data[cbrk], &src[pc], size);
  }
  data[hdr+7] = 0;

 defragment_out:
  if( data[hdr+7]+cbrk-iCellFirst!=pPage->nFree ){
    return SQLITE_CORRUPT_BKPT;
  }
  assert( cbrk>=iCellFirst );
  put2byte(&data[hdr+5], cbrk);
  data[hdr+1] = 0;
  data[hdr+2] = 0;
  memset(&data[iCellFirst], 0, cbrk-iCellFirst);
  assert( sqlite3PagerIswriteable(pPage->pDbPage) );
  return SQLITE_OK;
}
