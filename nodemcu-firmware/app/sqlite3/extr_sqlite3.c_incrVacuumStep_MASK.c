#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct TYPE_11__ {int bDoTruncate; scalar_t__ nPage; TYPE_1__* pPage1; int /*<<< orphan*/  mutex; } ;
struct TYPE_10__ {int /*<<< orphan*/ * aData; } ;
typedef  scalar_t__ Pgno ;
typedef  int /*<<< orphan*/  MemPage ;
typedef  TYPE_2__ BtShared ;

/* Variables and functions */
 scalar_t__ BTALLOC_ANY ; 
 scalar_t__ BTALLOC_EXACT ; 
 scalar_t__ BTALLOC_LE ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 scalar_t__ PTRMAP_FREEPAGE ; 
 scalar_t__ FUNC1 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ PTRMAP_ROOTPAGE ; 
 int SQLITE_CORRUPT_BKPT ; 
 int SQLITE_DONE ; 
 int SQLITE_OK ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ **,scalar_t__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_2__*,scalar_t__,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_2__*,int /*<<< orphan*/ *,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(BtShared *pBt, Pgno nFin, Pgno iLastPg, int bCommit){
  Pgno nFreeList;           /* Number of pages still on the free-list */
  int rc;

  FUNC3( FUNC9(pBt->mutex) );
  FUNC3( iLastPg>nFin );

  if( !FUNC1(pBt, iLastPg) && iLastPg!=FUNC0(pBt) ){
    u8 eType;
    Pgno iPtrPage;

    nFreeList = FUNC5(&pBt->pPage1->aData[36]);
    if( nFreeList==0 ){
      return SQLITE_DONE;
    }

    rc = FUNC6(pBt, iLastPg, &eType, &iPtrPage);
    if( rc!=SQLITE_OK ){
      return rc;
    }
    if( eType==PTRMAP_ROOTPAGE ){
      return SQLITE_CORRUPT_BKPT;
    }

    if( eType==PTRMAP_FREEPAGE ){
      if( bCommit==0 ){
        /* Remove the page from the files free-list. This is not required
        ** if bCommit is non-zero. In that case, the free-list will be
        ** truncated to zero after this function returns, so it doesn't
        ** matter if it still contains some garbage entries.
        */
        Pgno iFreePg;
        MemPage *pFreePg;
        rc = FUNC2(pBt, &pFreePg, &iFreePg, iLastPg, BTALLOC_EXACT);
        if( rc!=SQLITE_OK ){
          return rc;
        }
        FUNC3( iFreePg==iLastPg );
        FUNC7(pFreePg);
      }
    } else {
      Pgno iFreePg;             /* Index of free page to move pLastPg to */
      MemPage *pLastPg;
      u8 eMode = BTALLOC_ANY;   /* Mode parameter for allocateBtreePage() */
      Pgno iNear = 0;           /* nearby parameter for allocateBtreePage() */

      rc = FUNC4(pBt, iLastPg, &pLastPg, 0);
      if( rc!=SQLITE_OK ){
        return rc;
      }

      /* If bCommit is zero, this loop runs exactly once and page pLastPg
      ** is swapped with the first free page pulled off the free list.
      **
      ** On the other hand, if bCommit is greater than zero, then keep
      ** looping until a free-page located within the first nFin pages
      ** of the file is found.
      */
      if( bCommit==0 ){
        eMode = BTALLOC_LE;
        iNear = nFin;
      }
      do {
        MemPage *pFreePg;
        rc = FUNC2(pBt, &pFreePg, &iFreePg, iNear, eMode);
        if( rc!=SQLITE_OK ){
          FUNC7(pLastPg);
          return rc;
        }
        FUNC7(pFreePg);
      }while( bCommit && iFreePg>nFin );
      FUNC3( iFreePg<iLastPg );

      rc = FUNC8(pBt, pLastPg, eType, iPtrPage, iFreePg, bCommit);
      FUNC7(pLastPg);
      if( rc!=SQLITE_OK ){
        return rc;
      }
    }
  }

  if( bCommit==0 ){
    do {
      iLastPg--;
    }while( iLastPg==FUNC0(pBt) || FUNC1(pBt, iLastPg) );
    pBt->bDoTruncate = 1;
    pBt->nPage = iLastPg;
  }
  return SQLITE_OK;
}