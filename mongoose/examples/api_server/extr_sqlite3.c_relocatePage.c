
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_12__ {int mutex; int * pPager; } ;
struct TYPE_11__ {scalar_t__ pgno; int pDbPage; int aData; TYPE_2__* pBt; } ;
typedef scalar_t__ Pgno ;
typedef int Pager ;
typedef TYPE_1__ MemPage ;
typedef TYPE_2__ BtShared ;


 int PTRMAP_BTREE ;
 int PTRMAP_OVERFLOW1 ;
 int PTRMAP_OVERFLOW2 ;
 int PTRMAP_ROOTPAGE ;
 int SQLITE_OK ;
 int TRACE (char*) ;
 int assert (int) ;
 int btreeGetPage (TYPE_2__*,scalar_t__,TYPE_1__**,int ,int ) ;
 scalar_t__ get4byte (int ) ;
 int modifyPagePointer (TYPE_1__*,scalar_t__,scalar_t__,int ) ;
 int ptrmapPut (TYPE_2__*,scalar_t__,int ,scalar_t__,int*) ;
 int releasePage (TYPE_1__*) ;
 int setChildPtrmaps (TYPE_1__*) ;
 int sqlite3PagerMovepage (int *,int ,scalar_t__,int) ;
 int sqlite3PagerWrite (int ) ;
 int sqlite3_mutex_held (int ) ;

__attribute__((used)) static int relocatePage(
  BtShared *pBt,
  MemPage *pDbPage,
  u8 eType,
  Pgno iPtrPage,
  Pgno iFreePage,
  int isCommit
){
  MemPage *pPtrPage;
  Pgno iDbPage = pDbPage->pgno;
  Pager *pPager = pBt->pPager;
  int rc;

  assert( eType==PTRMAP_OVERFLOW2 || eType==PTRMAP_OVERFLOW1 ||
      eType==PTRMAP_BTREE || eType==PTRMAP_ROOTPAGE );
  assert( sqlite3_mutex_held(pBt->mutex) );
  assert( pDbPage->pBt==pBt );


  TRACE(("AUTOVACUUM: Moving %d to free page %d (ptr page %d type %d)\n",
      iDbPage, iFreePage, iPtrPage, eType));
  rc = sqlite3PagerMovepage(pPager, pDbPage->pDbPage, iFreePage, isCommit);
  if( rc!=SQLITE_OK ){
    return rc;
  }
  pDbPage->pgno = iFreePage;
  if( eType==PTRMAP_BTREE || eType==PTRMAP_ROOTPAGE ){
    rc = setChildPtrmaps(pDbPage);
    if( rc!=SQLITE_OK ){
      return rc;
    }
  }else{
    Pgno nextOvfl = get4byte(pDbPage->aData);
    if( nextOvfl!=0 ){
      ptrmapPut(pBt, nextOvfl, PTRMAP_OVERFLOW2, iFreePage, &rc);
      if( rc!=SQLITE_OK ){
        return rc;
      }
    }
  }





  if( eType!=PTRMAP_ROOTPAGE ){
    rc = btreeGetPage(pBt, iPtrPage, &pPtrPage, 0, 0);
    if( rc!=SQLITE_OK ){
      return rc;
    }
    rc = sqlite3PagerWrite(pPtrPage->pDbPage);
    if( rc!=SQLITE_OK ){
      releasePage(pPtrPage);
      return rc;
    }
    rc = modifyPagePointer(pPtrPage, iDbPage, iFreePage, eType);
    releasePage(pPtrPage);
    if( rc==SQLITE_OK ){
      ptrmapPut(pBt, iFreePage, eType, iPtrPage, &rc);
    }
  }
  return rc;
}
