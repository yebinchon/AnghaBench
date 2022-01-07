
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
typedef void* u16 ;
typedef int i64 ;
struct TYPE_10__ {int nPayload; int* pPayload; int nSize; void* nLocal; int nKey; } ;
struct TYPE_9__ {int leaf; int intKeyLeaf; scalar_t__ childPtrSize; int maxLocal; TYPE_1__* pBt; } ;
struct TYPE_8__ {int mutex; } ;
typedef TYPE_2__ MemPage ;
typedef TYPE_3__ CellInfo ;


 int assert (int) ;
 int btreeParseCellAdjustSizeForOverflow (TYPE_2__*,int*,TYPE_3__*) ;
 int sqlite3_mutex_held (int ) ;
 int testcase (int) ;

__attribute__((used)) static void btreeParseCellPtr(
  MemPage *pPage,
  u8 *pCell,
  CellInfo *pInfo
){
  u8 *pIter;
  u32 nPayload;
  u64 iKey;

  assert( sqlite3_mutex_held(pPage->pBt->mutex) );
  assert( pPage->leaf==0 || pPage->leaf==1 );
  assert( pPage->intKeyLeaf );
  assert( pPage->childPtrSize==0 );
  pIter = pCell;







  nPayload = *pIter;
  if( nPayload>=0x80 ){
    u8 *pEnd = &pIter[8];
    nPayload &= 0x7f;
    do{
      nPayload = (nPayload<<7) | (*++pIter & 0x7f);
    }while( (*pIter)>=0x80 && pIter<pEnd );
  }
  pIter++;







  iKey = *pIter;
  if( iKey>=0x80 ){
    u8 *pEnd = &pIter[7];
    iKey &= 0x7f;
    while(1){
      iKey = (iKey<<7) | (*++pIter & 0x7f);
      if( (*pIter)<0x80 ) break;
      if( pIter>=pEnd ){
        iKey = (iKey<<8) | *++pIter;
        break;
      }
    }
  }
  pIter++;

  pInfo->nKey = *(i64*)&iKey;
  pInfo->nPayload = nPayload;
  pInfo->pPayload = pIter;
  testcase( nPayload==pPage->maxLocal );
  testcase( nPayload==pPage->maxLocal+1 );
  if( nPayload<=pPage->maxLocal ){



    pInfo->nSize = nPayload + (u16)(pIter - pCell);
    if( pInfo->nSize<4 ) pInfo->nSize = 4;
    pInfo->nLocal = (u16)nPayload;
  }else{
    btreeParseCellAdjustSizeForOverflow(pPage, pCell, pInfo);
  }
}
