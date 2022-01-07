
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ i64 ;
struct TYPE_15__ {size_t pageSize; int usableSize; scalar_t__ autoVacuum; int mutex; } ;
struct TYPE_14__ {int nHeader; scalar_t__ nKey; scalar_t__ nData; int nSize; int nLocal; size_t iOverflow; } ;
struct TYPE_13__ {unsigned char* aData; int pDbPage; scalar_t__ intKey; scalar_t__ hasData; int leaf; TYPE_3__* pBt; } ;
typedef scalar_t__ Pgno ;
typedef TYPE_1__ MemPage ;
typedef TYPE_2__ CellInfo ;
typedef TYPE_3__ BtShared ;


 scalar_t__ NEVER (int) ;
 scalar_t__ PENDING_BYTE_PAGE (TYPE_3__*) ;
 scalar_t__ PTRMAP_ISPAGE (TYPE_3__*,scalar_t__) ;
 int PTRMAP_OVERFLOW1 ;
 int PTRMAP_OVERFLOW2 ;
 int SQLITE_CORRUPT_BKPT ;
 int SQLITE_OK ;
 int allocateBtreePage (TYPE_3__*,TYPE_1__**,scalar_t__*,scalar_t__,int ) ;
 int assert (int) ;
 int btreeParseCellPtr (TYPE_1__*,unsigned char*,TYPE_2__*) ;
 int memcpy (unsigned char*,int const*,int) ;
 int memset (unsigned char*,int ,int) ;
 int ptrmapPut (TYPE_3__*,scalar_t__,int ,scalar_t__,int*) ;
 int put4byte (unsigned char*,scalar_t__) ;
 scalar_t__ putVarint (unsigned char*,int) ;
 int releasePage (TYPE_1__*) ;
 scalar_t__ sqlite3PagerIswriteable (int ) ;
 int const* sqlite3_mutex_held (int ) ;

__attribute__((used)) static int fillInCell(
  MemPage *pPage,
  unsigned char *pCell,
  const void *pKey, i64 nKey,
  const void *pData,int nData,
  int nZero,
  int *pnSize
){
  int nPayload;
  const u8 *pSrc;
  int nSrc, n, rc;
  int spaceLeft;
  MemPage *pOvfl = 0;
  MemPage *pToRelease = 0;
  unsigned char *pPrior;
  unsigned char *pPayload;
  BtShared *pBt = pPage->pBt;
  Pgno pgnoOvfl = 0;
  int nHeader;
  CellInfo info;

  assert( sqlite3_mutex_held(pPage->pBt->mutex) );



  assert( pCell<pPage->aData || pCell>=&pPage->aData[pBt->pageSize]
            || sqlite3PagerIswriteable(pPage->pDbPage) );


  nHeader = 0;
  if( !pPage->leaf ){
    nHeader += 4;
  }
  if( pPage->hasData ){
    nHeader += putVarint(&pCell[nHeader], nData+nZero);
  }else{
    nData = nZero = 0;
  }
  nHeader += putVarint(&pCell[nHeader], *(u64*)&nKey);
  btreeParseCellPtr(pPage, pCell, &info);
  assert( info.nHeader==nHeader );
  assert( info.nKey==nKey );
  assert( info.nData==(u32)(nData+nZero) );


  nPayload = nData + nZero;
  if( pPage->intKey ){
    pSrc = pData;
    nSrc = nData;
    nData = 0;
  }else{
    if( NEVER(nKey>0x7fffffff || pKey==0) ){
      return SQLITE_CORRUPT_BKPT;
    }
    nPayload += (int)nKey;
    pSrc = pKey;
    nSrc = (int)nKey;
  }
  *pnSize = info.nSize;
  spaceLeft = info.nLocal;
  pPayload = &pCell[nHeader];
  pPrior = &pCell[info.iOverflow];

  while( nPayload>0 ){
    if( spaceLeft==0 ){

      Pgno pgnoPtrmap = pgnoOvfl;
      if( pBt->autoVacuum ){
        do{
          pgnoOvfl++;
        } while(
          PTRMAP_ISPAGE(pBt, pgnoOvfl) || pgnoOvfl==PENDING_BYTE_PAGE(pBt)
        );
      }

      rc = allocateBtreePage(pBt, &pOvfl, &pgnoOvfl, pgnoOvfl, 0);
      if( pBt->autoVacuum && rc==SQLITE_OK ){
        u8 eType = (pgnoPtrmap?PTRMAP_OVERFLOW2:PTRMAP_OVERFLOW1);
        ptrmapPut(pBt, pgnoOvfl, eType, pgnoPtrmap, &rc);
        if( rc ){
          releasePage(pOvfl);
        }
      }

      if( rc ){
        releasePage(pToRelease);
        return rc;
      }



      assert( pToRelease==0 || sqlite3PagerIswriteable(pToRelease->pDbPage) );



      assert( pPrior<pPage->aData || pPrior>=&pPage->aData[pBt->pageSize]
            || sqlite3PagerIswriteable(pPage->pDbPage) );

      put4byte(pPrior, pgnoOvfl);
      releasePage(pToRelease);
      pToRelease = pOvfl;
      pPrior = pOvfl->aData;
      put4byte(pPrior, 0);
      pPayload = &pOvfl->aData[4];
      spaceLeft = pBt->usableSize - 4;
    }
    n = nPayload;
    if( n>spaceLeft ) n = spaceLeft;



    assert( pToRelease==0 || sqlite3PagerIswriteable(pToRelease->pDbPage) );



    assert( pPayload<pPage->aData || pPayload>=&pPage->aData[pBt->pageSize]
            || sqlite3PagerIswriteable(pPage->pDbPage) );

    if( nSrc>0 ){
      if( n>nSrc ) n = nSrc;
      assert( pSrc );
      memcpy(pPayload, pSrc, n);
    }else{
      memset(pPayload, 0, n);
    }
    nPayload -= n;
    pPayload += n;
    pSrc += n;
    nSrc -= n;
    spaceLeft -= n;
    if( nSrc==0 ){
      nSrc = nData;
      pSrc = pData;
    }
  }
  releasePage(pToRelease);
  return SQLITE_OK;
}
