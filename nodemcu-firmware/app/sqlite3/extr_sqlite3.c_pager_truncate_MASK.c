#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int i64 ;
struct TYPE_3__ {scalar_t__ eState; int pageSize; scalar_t__ eLock; char* pTmpSpace; scalar_t__ dbFileSize; int /*<<< orphan*/  fd; } ;
typedef  scalar_t__ Pgno ;
typedef  TYPE_1__ Pager ;

/* Variables and functions */
 scalar_t__ EXCLUSIVE_LOCK ; 
 scalar_t__ PAGER_ERROR ; 
 scalar_t__ PAGER_OPEN ; 
 scalar_t__ PAGER_READER ; 
 scalar_t__ PAGER_WRITER_DBMOD ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(Pager *pPager, Pgno nPage){
  int rc = SQLITE_OK;
  FUNC0( pPager->eState!=PAGER_ERROR );
  FUNC0( pPager->eState!=PAGER_READER );

  if( FUNC1(pPager->fd)
   && (pPager->eState>=PAGER_WRITER_DBMOD || pPager->eState==PAGER_OPEN)
  ){
    i64 currentSize, newSize;
    int szPage = pPager->pageSize;
    FUNC0( pPager->eLock==EXCLUSIVE_LOCK );
    /* TODO: Is it safe to use Pager.dbFileSize here? */
    rc = FUNC3(pPager->fd, &currentSize);
    newSize = szPage*(i64)nPage;
    if( rc==SQLITE_OK && currentSize!=newSize ){
      if( currentSize>newSize ){
        rc = FUNC4(pPager->fd, newSize);
      }else if( (currentSize+szPage)<=newSize ){
        char *pTmp = pPager->pTmpSpace;
        FUNC2(pTmp, 0, szPage);
        FUNC6( (newSize-szPage) == currentSize );
        FUNC6( (newSize-szPage) >  currentSize );
        rc = FUNC5(pPager->fd, pTmp, szPage, newSize-szPage);
      }
      if( rc==SQLITE_OK ){
        pPager->dbFileSize = nPage;
      }
    }
  }
  return rc;
}