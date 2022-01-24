#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct TYPE_26__ {scalar_t__ inTransaction; int btsFlags; int openFlags; TYPE_1__* pPage1; scalar_t__ autoVacuum; } ;
struct TYPE_25__ {TYPE_4__* pBt; } ;
struct TYPE_24__ {int /*<<< orphan*/  pDbPage; } ;
struct TYPE_23__ {int /*<<< orphan*/  pDbPage; } ;
typedef  int Pgno ;
typedef  TYPE_2__ MemPage ;
typedef  TYPE_3__ Btree ;
typedef  TYPE_4__ BtShared ;

/* Variables and functions */
 int /*<<< orphan*/  BTALLOC_EXACT ; 
 int BTREE_INTKEY ; 
 int /*<<< orphan*/  BTREE_LARGEST_ROOT_PAGE ; 
 int BTREE_SINGLE ; 
 int BTS_READ_ONLY ; 
 scalar_t__ CORRUPT_DB ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (TYPE_4__*) ; 
 int PTF_INTKEY ; 
 int PTF_LEAF ; 
 int PTF_LEAFDATA ; 
 int PTF_ZERODATA ; 
 scalar_t__ PTRMAP_FREEPAGE ; 
 int FUNC2 (TYPE_4__*,int) ; 
 scalar_t__ PTRMAP_ROOTPAGE ; 
 int SQLITE_CORRUPT_BKPT ; 
 int SQLITE_OK ; 
 scalar_t__ TRANS_WRITE ; 
 int FUNC3 (TYPE_4__*,TYPE_2__**,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (TYPE_4__*,int,TYPE_2__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int FUNC7 (TYPE_4__*,int,scalar_t__*,int*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int,scalar_t__,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int FUNC10 (TYPE_4__*,TYPE_2__*,scalar_t__,int,int,int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,int /*<<< orphan*/ ,int*) ; 
 int FUNC13 (TYPE_3__*) ; 
 int FUNC14 (TYPE_3__*,int,int) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*,int) ; 

__attribute__((used)) static int FUNC20(Btree *p, int *piTable, int createTabFlags){
  BtShared *pBt = p->pBt;
  MemPage *pRoot;
  Pgno pgnoRoot;
  int rc;
  int ptfFlags;          /* Page-type flage for the root page of new table */

  FUNC4( FUNC13(p) );
  FUNC4( pBt->inTransaction==TRANS_WRITE );
  FUNC4( (pBt->btsFlags & BTS_READ_ONLY)==0 );

#ifdef SQLITE_OMIT_AUTOVACUUM
  rc = allocateBtreePage(pBt, &pRoot, &pgnoRoot, 1, 0);
  if( rc ){
    return rc;
  }
#else
  if( pBt->autoVacuum ){
    Pgno pgnoMove;      /* Move a page here to make room for the root-page */
    MemPage *pPageMove; /* The page to move to. */

    /* Creating a new table may probably require moving an existing database
    ** to make room for the new tables root page. In case this page turns
    ** out to be an overflow page, delete all overflow page-map caches
    ** held by open cursors.
    */
    FUNC6(pBt);

    /* Read the value of meta[3] from the database to determine where the
    ** root page of the new table should go. meta[3] is the largest root-page
    ** created so far, so the new root-page is (meta[3]+1).
    */
    FUNC12(p, BTREE_LARGEST_ROOT_PAGE, &pgnoRoot);
    pgnoRoot++;

    /* The new root-page may not be allocated on a pointer-map page, or the
    ** PENDING_BYTE page.
    */
    while( pgnoRoot==FUNC2(pBt, pgnoRoot) ||
        pgnoRoot==FUNC1(pBt) ){
      pgnoRoot++;
    }
    FUNC4( pgnoRoot>=3 || CORRUPT_DB );
    FUNC18( pgnoRoot<3 );

    /* Allocate a page. The page that currently resides at pgnoRoot will
    ** be moved to the allocated page (unless the allocated page happens
    ** to reside at pgnoRoot).
    */
    rc = FUNC3(pBt, &pPageMove, &pgnoMove, pgnoRoot, BTALLOC_EXACT);
    if( rc!=SQLITE_OK ){
      return rc;
    }

    if( pgnoMove!=pgnoRoot ){
      /* pgnoRoot is the page that will be used for the root-page of
      ** the new table (assuming an error did not occur). But we were
      ** allocated pgnoMove. If required (i.e. if it was not allocated
      ** by extending the file), the current page at position pgnoMove
      ** is already journaled.
      */
      u8 eType = 0;
      Pgno iPtrPage = 0;

      /* Save the positions of any open cursors. This is required in
      ** case they are holding a reference to an xFetch reference
      ** corresponding to page pgnoRoot.  */
      rc = FUNC11(pBt, 0, 0);
      FUNC9(pPageMove);
      if( rc!=SQLITE_OK ){
        return rc;
      }

      /* Move the page currently at pgnoRoot to pgnoMove. */
      rc = FUNC5(pBt, pgnoRoot, &pRoot, 0);
      if( rc!=SQLITE_OK ){
        return rc;
      }
      rc = FUNC7(pBt, pgnoRoot, &eType, &iPtrPage);
      if( eType==PTRMAP_ROOTPAGE || eType==PTRMAP_FREEPAGE ){
        rc = SQLITE_CORRUPT_BKPT;
      }
      if( rc!=SQLITE_OK ){
        FUNC9(pRoot);
        return rc;
      }
      FUNC4( eType!=PTRMAP_ROOTPAGE );
      FUNC4( eType!=PTRMAP_FREEPAGE );
      rc = FUNC10(pBt, pRoot, eType, iPtrPage, pgnoMove, 0);
      FUNC9(pRoot);

      /* Obtain the page at pgnoRoot */
      if( rc!=SQLITE_OK ){
        return rc;
      }
      rc = FUNC5(pBt, pgnoRoot, &pRoot, 0);
      if( rc!=SQLITE_OK ){
        return rc;
      }
      rc = FUNC17(pRoot->pDbPage);
      if( rc!=SQLITE_OK ){
        FUNC9(pRoot);
        return rc;
      }
    }else{
      pRoot = pPageMove;
    }

    /* Update the pointer-map and meta-data with the new root-page number. */
    FUNC8(pBt, pgnoRoot, PTRMAP_ROOTPAGE, 0, &rc);
    if( rc ){
      FUNC9(pRoot);
      return rc;
    }

    /* When the new root page was allocated, page 1 was made writable in
    ** order either to increase the database filesize, or to decrement the
    ** freelist count.  Hence, the sqlite3BtreeUpdateMeta() call cannot fail.
    */
    FUNC4( FUNC15(pBt->pPage1->pDbPage) );
    rc = FUNC14(p, 4, pgnoRoot);
    if( FUNC0(rc) ){
      FUNC9(pRoot);
      return rc;
    }

  }else{
    rc = FUNC3(pBt, &pRoot, &pgnoRoot, 1, 0);
    if( rc ) return rc;
  }
#endif
  FUNC4( FUNC15(pRoot->pDbPage) );
  if( createTabFlags & BTREE_INTKEY ){
    ptfFlags = PTF_INTKEY | PTF_LEAFDATA | PTF_LEAF;
  }else{
    ptfFlags = PTF_ZERODATA | PTF_LEAF;
  }
  FUNC19(pRoot, ptfFlags);
  FUNC16(pRoot->pDbPage);
  FUNC4( (pBt->openFlags & BTREE_SINGLE)==0 || pgnoRoot==2 );
  *piTable = (int)pgnoRoot;
  return SQLITE_OK;
}