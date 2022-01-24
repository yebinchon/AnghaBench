#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  sqlite3_vfs ;
struct TYPE_6__ {int useJournal; scalar_t__ eState; scalar_t__ tempFile; int /*<<< orphan*/  jfd; int /*<<< orphan*/  zJournal; int /*<<< orphan*/  exclusiveMode; int /*<<< orphan*/  fd; int /*<<< orphan*/ * pVfs; } ;
typedef  scalar_t__ Pgno ;
typedef  TYPE_1__ Pager ;

/* Variables and functions */
 scalar_t__ PAGER_OPEN ; 
 int /*<<< orphan*/  RESERVED_LOCK ; 
 int /*<<< orphan*/  SHARED_LOCK ; 
 int /*<<< orphan*/  SQLITE_ACCESS_EXISTS ; 
 int SQLITE_CANTOPEN ; 
 int SQLITE_IOCAP_UNDELETABLE_WHEN_OPEN ; 
 int SQLITE_IOERR_SHORT_READ ; 
 int SQLITE_OK ; 
 int SQLITE_OPEN_MAIN_JOURNAL ; 
 int SQLITE_OPEN_READONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 int FUNC13 (int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(Pager *pPager, int *pExists){
  sqlite3_vfs * const pVfs = pPager->pVfs;
  int rc = SQLITE_OK;           /* Return code */
  int exists = 1;               /* True if a journal file is present */
  int jrnlOpen = !!FUNC1(pPager->jfd);

  FUNC0( pPager->useJournal );
  FUNC0( FUNC1(pPager->fd) );
  FUNC0( pPager->eState==PAGER_OPEN );

  FUNC0( jrnlOpen==0 || ( FUNC11(pPager->jfd) &
    SQLITE_IOCAP_UNDELETABLE_WHEN_OPEN
  ));

  *pExists = 0;
  if( !jrnlOpen ){
    rc = FUNC7(pVfs, pPager->zJournal, SQLITE_ACCESS_EXISTS, &exists);
  }
  if( rc==SQLITE_OK && exists ){
    int locked = 0;             /* True if some process holds a RESERVED lock */

    /* Race condition here:  Another process might have been holding the
    ** the RESERVED lock and have a journal open at the sqlite3OsAccess()
    ** call above, but then delete the journal and drop the lock before
    ** we get to the following sqlite3OsCheckReservedLock() call.  If that
    ** is the case, this routine might think there is a hot journal when
    ** in fact there is none.  This results in a false-positive which will
    ** be dealt with by the playback routine.  Ticket #3883.
    */
    rc = FUNC8(pPager->fd, &locked);
    if( rc==SQLITE_OK && !locked ){
      Pgno nPage;                 /* Number of pages in database file */

      FUNC0( pPager->tempFile==0 );
      rc = FUNC3(pPager, &nPage);
      if( rc==SQLITE_OK ){
        /* If the database is zero pages in size, that means that either (1) the
        ** journal is a remnant from a prior database with the same name where
        ** the database file but not the journal was deleted, or (2) the initial
        ** transaction that populates a new database is being rolled back.
        ** In either case, the journal file can be deleted.  However, take care
        ** not to delete the journal file if it is already open due to
        ** journal_mode=PERSIST.
        */
        if( nPage==0 && !jrnlOpen ){
          FUNC5();
          if( FUNC2(pPager, RESERVED_LOCK)==SQLITE_OK ){
            FUNC10(pVfs, pPager->zJournal, 0);
            if( !pPager->exclusiveMode ) FUNC4(pPager, SHARED_LOCK);
          }
          FUNC6();
        }else{
          /* The journal file exists and no other connection has a reserved
          ** or greater lock on the database file. Now check that there is
          ** at least one non-zero bytes at the start of the journal file.
          ** If there is, then we consider this journal to be hot. If not,
          ** it can be ignored.
          */
          if( !jrnlOpen ){
            int f = SQLITE_OPEN_READONLY|SQLITE_OPEN_MAIN_JOURNAL;
            rc = FUNC12(pVfs, pPager->zJournal, pPager->jfd, f, &f);
          }
          if( rc==SQLITE_OK ){
            u8 first = 0;
            rc = FUNC13(pPager->jfd, (void *)&first, 1, 0);
            if( rc==SQLITE_IOERR_SHORT_READ ){
              rc = SQLITE_OK;
            }
            if( !jrnlOpen ){
              FUNC9(pPager->jfd);
            }
            *pExists = (first!=0);
          }else if( rc==SQLITE_CANTOPEN ){
            /* If we cannot open the rollback journal file in order to see if
            ** it has a zero header, that might be due to an I/O error, or
            ** it might be due to the race condition described above and in
            ** ticket #3883.  Either way, assume that the journal is hot.
            ** This might be a false positive.  But if it is, then the
            ** automatic journal playback and recovery mechanism will deal
            ** with it under an EXCLUSIVE lock where we do not need to
            ** worry so much with race conditions.
            */
            *pExists = 1;
            rc = SQLITE_OK;
          }
        }
      }
    }
  }

  return rc;
}