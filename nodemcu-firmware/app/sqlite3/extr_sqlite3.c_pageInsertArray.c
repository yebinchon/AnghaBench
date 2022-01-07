
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_8__ {scalar_t__** apCell; } ;
struct TYPE_7__ {scalar_t__ hdrOffset; scalar_t__* aData; } ;
typedef TYPE_1__ MemPage ;
typedef TYPE_2__ CellArray ;


 scalar_t__ CORRUPT_DB ;
 int assert (int) ;
 int cachedCellSize (TYPE_2__*,int) ;
 int memmove (scalar_t__*,scalar_t__*,int) ;
 scalar_t__* pageFindSlot (TYPE_1__*,int,int*) ;
 int put2byte (scalar_t__*,int) ;

__attribute__((used)) static int pageInsertArray(
  MemPage *pPg,
  u8 *pBegin,
  u8 **ppData,
  u8 *pCellptr,
  int iFirst,
  int nCell,
  CellArray *pCArray
){
  int i;
  u8 *aData = pPg->aData;
  u8 *pData = *ppData;
  int iEnd = iFirst + nCell;
  assert( CORRUPT_DB || pPg->hdrOffset==0 );
  for(i=iFirst; i<iEnd; i++){
    int sz, rc;
    u8 *pSlot;
    sz = cachedCellSize(pCArray, i);
    if( (aData[1]==0 && aData[2]==0) || (pSlot = pageFindSlot(pPg,sz,&rc))==0 ){
      if( (pData - pBegin)<sz ) return 1;
      pData -= sz;
      pSlot = pData;
    }



    assert( (pSlot+sz)<=pCArray->apCell[i]
         || pSlot>=(pCArray->apCell[i]+sz)
         || CORRUPT_DB );
    memmove(pSlot, pCArray->apCell[i], sz);
    put2byte(pCellptr, (pSlot - aData));
    pCellptr += 2;
  }
  *ppData = pData;
  return 0;
}
