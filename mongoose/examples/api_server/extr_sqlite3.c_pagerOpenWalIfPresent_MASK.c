#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ eState; scalar_t__ eLock; scalar_t__ journalMode; int /*<<< orphan*/  pPCache; int /*<<< orphan*/  zWal; int /*<<< orphan*/  pVfs; int /*<<< orphan*/  tempFile; } ;
typedef  scalar_t__ Pgno ;
typedef  TYPE_1__ Pager ;

/* Variables and functions */
 scalar_t__ PAGER_JOURNALMODE_DELETE ; 
 scalar_t__ PAGER_JOURNALMODE_WAL ; 
 scalar_t__ PAGER_OPEN ; 
 scalar_t__ SHARED_LOCK ; 
 int /*<<< orphan*/  SQLITE_ACCESS_EXISTS ; 
 int SQLITE_IOERR_DELETE_NOENT ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*,scalar_t__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(Pager *pPager){
  int rc = SQLITE_OK;
  FUNC0( pPager->eState==PAGER_OPEN );
  FUNC0( pPager->eLock>=SHARED_LOCK );

  if( !pPager->tempFile ){
    int isWal;                    /* True if WAL file exists */
    Pgno nPage;                   /* Size of the database file */

    rc = FUNC1(pPager, &nPage);
    if( rc ) return rc;
    if( nPage==0 ){
      rc = FUNC3(pPager->pVfs, pPager->zWal, 0);
      if( rc==SQLITE_IOERR_DELETE_NOENT ) rc = SQLITE_OK;
      isWal = 0;
    }else{
      rc = FUNC2(
          pPager->pVfs, pPager->zWal, SQLITE_ACCESS_EXISTS, &isWal
      );
    }
    if( rc==SQLITE_OK ){
      if( isWal ){
        FUNC6( FUNC5(pPager->pPCache)==0 );
        rc = FUNC4(pPager, 0);
      }else if( pPager->journalMode==PAGER_JOURNALMODE_WAL ){
        pPager->journalMode = PAGER_JOURNALMODE_DELETE;
      }
    }
  }
  return rc;
}