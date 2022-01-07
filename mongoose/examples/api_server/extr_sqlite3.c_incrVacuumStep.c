
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_11__ {int bDoTruncate; scalar_t__ nPage; TYPE_1__* pPage1; int mutex; } ;
struct TYPE_10__ {int * aData; } ;
typedef scalar_t__ Pgno ;
typedef int MemPage ;
typedef TYPE_2__ BtShared ;


 scalar_t__ BTALLOC_ANY ;
 scalar_t__ BTALLOC_EXACT ;
 scalar_t__ BTALLOC_LE ;
 scalar_t__ PENDING_BYTE_PAGE (TYPE_2__*) ;
 scalar_t__ PTRMAP_FREEPAGE ;
 scalar_t__ PTRMAP_ISPAGE (TYPE_2__*,scalar_t__) ;
 scalar_t__ PTRMAP_ROOTPAGE ;
 int SQLITE_CORRUPT_BKPT ;
 int SQLITE_DONE ;
 int SQLITE_OK ;
 int allocateBtreePage (TYPE_2__*,int **,scalar_t__*,scalar_t__,scalar_t__) ;
 int assert (int) ;
 int btreeGetPage (TYPE_2__*,scalar_t__,int **,int ,int ) ;
 scalar_t__ get4byte (int *) ;
 int ptrmapGet (TYPE_2__*,scalar_t__,scalar_t__*,scalar_t__*) ;
 int releasePage (int *) ;
 int relocatePage (TYPE_2__*,int *,scalar_t__,scalar_t__,scalar_t__,int) ;
 int sqlite3_mutex_held (int ) ;

__attribute__((used)) static int incrVacuumStep(BtShared *pBt, Pgno nFin, Pgno iLastPg, int bCommit){
  Pgno nFreeList;
  int rc;

  assert( sqlite3_mutex_held(pBt->mutex) );
  assert( iLastPg>nFin );

  if( !PTRMAP_ISPAGE(pBt, iLastPg) && iLastPg!=PENDING_BYTE_PAGE(pBt) ){
    u8 eType;
    Pgno iPtrPage;

    nFreeList = get4byte(&pBt->pPage1->aData[36]);
    if( nFreeList==0 ){
      return SQLITE_DONE;
    }

    rc = ptrmapGet(pBt, iLastPg, &eType, &iPtrPage);
    if( rc!=SQLITE_OK ){
      return rc;
    }
    if( eType==PTRMAP_ROOTPAGE ){
      return SQLITE_CORRUPT_BKPT;
    }

    if( eType==PTRMAP_FREEPAGE ){
      if( bCommit==0 ){





        Pgno iFreePg;
        MemPage *pFreePg;
        rc = allocateBtreePage(pBt, &pFreePg, &iFreePg, iLastPg, BTALLOC_EXACT);
        if( rc!=SQLITE_OK ){
          return rc;
        }
        assert( iFreePg==iLastPg );
        releasePage(pFreePg);
      }
    } else {
      Pgno iFreePg;
      MemPage *pLastPg;
      u8 eMode = BTALLOC_ANY;
      Pgno iNear = 0;

      rc = btreeGetPage(pBt, iLastPg, &pLastPg, 0, 0);
      if( rc!=SQLITE_OK ){
        return rc;
      }
      if( bCommit==0 ){
        eMode = BTALLOC_LE;
        iNear = nFin;
      }
      do {
        MemPage *pFreePg;
        rc = allocateBtreePage(pBt, &pFreePg, &iFreePg, iNear, eMode);
        if( rc!=SQLITE_OK ){
          releasePage(pLastPg);
          return rc;
        }
        releasePage(pFreePg);
      }while( bCommit && iFreePg>nFin );
      assert( iFreePg<iLastPg );

      rc = relocatePage(pBt, pLastPg, eType, iPtrPage, iFreePg, bCommit);
      releasePage(pLastPg);
      if( rc!=SQLITE_OK ){
        return rc;
      }
    }
  }

  if( bCommit==0 ){
    do {
      iLastPg--;
    }while( iLastPg==PENDING_BYTE_PAGE(pBt) || PTRMAP_ISPAGE(pBt, iLastPg) );
    pBt->bDoTruncate = 1;
    pBt->nPage = iLastPg;
  }
  return SQLITE_OK;
}
