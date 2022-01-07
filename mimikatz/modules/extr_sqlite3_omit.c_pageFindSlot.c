
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_6__ {int hdrOffset; int* aData; TYPE_1__* pBt; } ;
struct TYPE_5__ {int usableSize; } ;
typedef TYPE_2__ MemPage ;


 int SQLITE_CORRUPT_PAGE (TYPE_2__*) ;
 int assert (int) ;
 int get2byte (int*) ;
 int memcpy (int*,int*,int) ;
 int put2byte (int*,int) ;
 int testcase (int) ;

__attribute__((used)) static u8 *pageFindSlot(MemPage *pPg, int nByte, int *pRc){
  const int hdr = pPg->hdrOffset;
  u8 * const aData = pPg->aData;
  int iAddr = hdr + 1;
  int pc = get2byte(&aData[iAddr]);
  int x;
  int usableSize = pPg->pBt->usableSize;
  int size;

  assert( pc>0 );
  while( pc<=usableSize-4 ){



    size = get2byte(&aData[pc+2]);
    if( (x = size - nByte)>=0 ){
      testcase( x==4 );
      testcase( x==3 );
      if( size+pc > usableSize ){
        *pRc = SQLITE_CORRUPT_PAGE(pPg);
        return 0;
      }else if( x<4 ){


        if( aData[hdr+7]>57 ) return 0;



        memcpy(&aData[iAddr], &aData[pc], 2);
        aData[hdr+7] += (u8)x;
      }else{


        put2byte(&aData[pc+2], x);
      }
      return &aData[pc + x];
    }
    iAddr = pc;
    pc = get2byte(&aData[pc]);
    if( pc<iAddr+size ) break;
  }
  if( pc ){
    *pRc = SQLITE_CORRUPT_PAGE(pPg);
  }

  return 0;
}
