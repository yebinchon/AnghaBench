#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {size_t iPage; int curPagerFlags; scalar_t__ curIntKey; TYPE_1__** apPage; } ;
struct TYPE_12__ {int /*<<< orphan*/  pPager; int /*<<< orphan*/  mutex; } ;
struct TYPE_11__ {scalar_t__ isInit; scalar_t__ aData; int nCell; scalar_t__ intKey; int /*<<< orphan*/  pgno; } ;
typedef  int /*<<< orphan*/  Pgno ;
typedef  TYPE_1__ MemPage ;
typedef  int /*<<< orphan*/  DbPage ;
typedef  TYPE_2__ BtShared ;
typedef  TYPE_3__ BtCursor ;

/* Variables and functions */
 int SQLITE_CORRUPT ; 
 int SQLITE_CORRUPT_BKPT ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(
  BtShared *pBt,                  /* The database file */
  Pgno pgno,                      /* Number of the page to get */
  MemPage **ppPage,               /* Write the page pointer here */
  BtCursor *pCur,                 /* Cursor to receive the page, or NULL */
  int bReadOnly                   /* True for a read-only page */
){
  int rc;
  DbPage *pDbPage;
  FUNC0( FUNC8(pBt->mutex) );
  FUNC0( pCur==0 || ppPage==&pCur->apPage[pCur->iPage] );
  FUNC0( pCur==0 || bReadOnly==pCur->curPagerFlags );
  FUNC0( pCur==0 || pCur->iPage>0 );

  if( pgno>FUNC3(pBt) ){
    rc = SQLITE_CORRUPT_BKPT;
    goto getAndInitPage_error;
  }
  rc = FUNC5(pBt->pPager, pgno, (DbPage**)&pDbPage, bReadOnly);
  if( rc ){
    goto getAndInitPage_error;
  }
  *ppPage = (MemPage*)FUNC7(pDbPage);
  if( (*ppPage)->isInit==0 ){
    FUNC2(pDbPage, pgno, pBt);
    rc = FUNC1(*ppPage);
    if( rc!=SQLITE_OK ){
      FUNC4(*ppPage);
      goto getAndInitPage_error;
    }
  }
  FUNC0( (*ppPage)->pgno==pgno );
  FUNC0( (*ppPage)->aData==FUNC6(pDbPage) );

  /* If obtaining a child page for a cursor, we must verify that the page is
  ** compatible with the root page. */
  if( pCur && ((*ppPage)->nCell<1 || (*ppPage)->intKey!=pCur->curIntKey) ){
    rc = SQLITE_CORRUPT_BKPT;
    FUNC4(*ppPage);
    goto getAndInitPage_error;
  }
  return SQLITE_OK;

getAndInitPage_error:
  if( pCur ) pCur->iPage--;
  FUNC9( pgno==0 );
  FUNC0( pgno!=0 || rc==SQLITE_CORRUPT );
  return rc;
}