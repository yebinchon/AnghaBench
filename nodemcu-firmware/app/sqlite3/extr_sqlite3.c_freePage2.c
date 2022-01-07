
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_15__ {int btsFlags; int usableSize; int mutex; TYPE_2__* pPage1; } ;
struct TYPE_14__ {int pgno; scalar_t__ isInit; int * aData; int pDbPage; TYPE_1__* pBt; } ;
struct TYPE_13__ {int pageSize; } ;
typedef int Pgno ;
typedef TYPE_2__ MemPage ;
typedef TYPE_3__ BtShared ;


 int BTS_SECURE_DELETE ;
 scalar_t__ CORRUPT_DB ;
 scalar_t__ ISAUTOVACUUM ;
 int PTRMAP_FREEPAGE ;
 int SQLITE_CORRUPT_BKPT ;
 int SQLITE_OK ;
 int TRACE (char*) ;
 int assert (int) ;
 int btreeGetPage (TYPE_3__*,int,TYPE_2__**,int ) ;
 TYPE_2__* btreePageLookup (TYPE_3__*,int) ;
 int btreeSetHasContent (TYPE_3__*,int) ;
 int get4byte (int *) ;
 int memset (int *,int ,int ) ;
 int ptrmapPut (TYPE_3__*,int,int ,int ,int*) ;
 int put4byte (int *,int) ;
 int releasePage (TYPE_2__*) ;
 int sqlite3PagerDontWrite (int ) ;
 int sqlite3PagerRef (int ) ;
 int sqlite3PagerWrite (int ) ;
 int sqlite3_mutex_held (int ) ;

__attribute__((used)) static int freePage2(BtShared *pBt, MemPage *pMemPage, Pgno iPage){
  MemPage *pTrunk = 0;
  Pgno iTrunk = 0;
  MemPage *pPage1 = pBt->pPage1;
  MemPage *pPage;
  int rc;
  int nFree;

  assert( sqlite3_mutex_held(pBt->mutex) );
  assert( CORRUPT_DB || iPage>1 );
  assert( !pMemPage || pMemPage->pgno==iPage );

  if( iPage<2 ) return SQLITE_CORRUPT_BKPT;
  if( pMemPage ){
    pPage = pMemPage;
    sqlite3PagerRef(pPage->pDbPage);
  }else{
    pPage = btreePageLookup(pBt, iPage);
  }


  rc = sqlite3PagerWrite(pPage1->pDbPage);
  if( rc ) goto freepage_out;
  nFree = get4byte(&pPage1->aData[36]);
  put4byte(&pPage1->aData[36], nFree+1);

  if( pBt->btsFlags & BTS_SECURE_DELETE ){



    if( (!pPage && ((rc = btreeGetPage(pBt, iPage, &pPage, 0))!=0) )
     || ((rc = sqlite3PagerWrite(pPage->pDbPage))!=0)
    ){
      goto freepage_out;
    }
    memset(pPage->aData, 0, pPage->pBt->pageSize);
  }




  if( ISAUTOVACUUM ){
    ptrmapPut(pBt, iPage, PTRMAP_FREEPAGE, 0, &rc);
    if( rc ) goto freepage_out;
  }
  if( nFree!=0 ){
    u32 nLeaf;

    iTrunk = get4byte(&pPage1->aData[32]);
    rc = btreeGetPage(pBt, iTrunk, &pTrunk, 0);
    if( rc!=SQLITE_OK ){
      goto freepage_out;
    }

    nLeaf = get4byte(&pTrunk->aData[4]);
    assert( pBt->usableSize>32 );
    if( nLeaf > (u32)pBt->usableSize/4 - 2 ){
      rc = SQLITE_CORRUPT_BKPT;
      goto freepage_out;
    }
    if( nLeaf < (u32)pBt->usableSize/4 - 8 ){
      rc = sqlite3PagerWrite(pTrunk->pDbPage);
      if( rc==SQLITE_OK ){
        put4byte(&pTrunk->aData[4], nLeaf+1);
        put4byte(&pTrunk->aData[8+nLeaf*4], iPage);
        if( pPage && (pBt->btsFlags & BTS_SECURE_DELETE)==0 ){
          sqlite3PagerDontWrite(pPage->pDbPage);
        }
        rc = btreeSetHasContent(pBt, iPage);
      }
      TRACE(("FREE-PAGE: %d leaf on trunk page %d\n",pPage->pgno,pTrunk->pgno));
      goto freepage_out;
    }
  }







  if( pPage==0 && SQLITE_OK!=(rc = btreeGetPage(pBt, iPage, &pPage, 0)) ){
    goto freepage_out;
  }
  rc = sqlite3PagerWrite(pPage->pDbPage);
  if( rc!=SQLITE_OK ){
    goto freepage_out;
  }
  put4byte(pPage->aData, iTrunk);
  put4byte(&pPage->aData[4], 0);
  put4byte(&pPage1->aData[32], iPage);
  TRACE(("FREE-PAGE: %d new trunk page replacing %d\n", pPage->pgno, iTrunk));

freepage_out:
  if( pPage ){
    pPage->isInit = 0;
  }
  releasePage(pPage);
  releasePage(pTrunk);
  return rc;
}
