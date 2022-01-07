
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {int max1bytePayload; int minLocal; int maxLocal; int minLeaf; int maxLeaf; int mutex; } ;
struct TYPE_4__ {int hdrOffset; int pgno; int leaf; int childPtrSize; int intKey; int intKeyLeaf; int max1bytePayload; int minLocal; int maxLocal; int xParseCell; int xCellSize; TYPE_2__* pBt; } ;
typedef TYPE_1__ MemPage ;
typedef TYPE_2__ BtShared ;


 int PTF_INTKEY ;
 int PTF_LEAF ;
 int PTF_LEAFDATA ;
 int PTF_ZERODATA ;
 int SQLITE_CORRUPT_BKPT ;
 int SQLITE_OK ;
 int assert (int) ;
 int btreeParseCellPtr ;
 int btreeParseCellPtrIndex ;
 int btreeParseCellPtrNoPayload ;
 int cellSizePtr ;
 int cellSizePtrNoPayload ;
 int sqlite3_mutex_held (int ) ;

__attribute__((used)) static int decodeFlags(MemPage *pPage, int flagByte){
  BtShared *pBt;

  assert( pPage->hdrOffset==(pPage->pgno==1 ? 100 : 0) );
  assert( sqlite3_mutex_held(pPage->pBt->mutex) );
  pPage->leaf = (u8)(flagByte>>3); assert( PTF_LEAF == 1<<3 );
  flagByte &= ~PTF_LEAF;
  pPage->childPtrSize = 4-4*pPage->leaf;
  pPage->xCellSize = cellSizePtr;
  pBt = pPage->pBt;
  if( flagByte==(PTF_LEAFDATA | PTF_INTKEY) ){


    assert( (PTF_LEAFDATA|PTF_INTKEY)==5 );


    assert( (PTF_LEAFDATA|PTF_INTKEY|PTF_LEAF)==13 );
    pPage->intKey = 1;
    if( pPage->leaf ){
      pPage->intKeyLeaf = 1;
      pPage->xParseCell = btreeParseCellPtr;
    }else{
      pPage->intKeyLeaf = 0;
      pPage->xCellSize = cellSizePtrNoPayload;
      pPage->xParseCell = btreeParseCellPtrNoPayload;
    }
    pPage->maxLocal = pBt->maxLeaf;
    pPage->minLocal = pBt->minLeaf;
  }else if( flagByte==PTF_ZERODATA ){


    assert( (PTF_ZERODATA)==2 );


    assert( (PTF_ZERODATA|PTF_LEAF)==10 );
    pPage->intKey = 0;
    pPage->intKeyLeaf = 0;
    pPage->xParseCell = btreeParseCellPtrIndex;
    pPage->maxLocal = pBt->maxLocal;
    pPage->minLocal = pBt->minLocal;
  }else{


    return SQLITE_CORRUPT_BKPT;
  }
  pPage->max1bytePayload = pBt->max1bytePayload;
  return SQLITE_OK;
}
