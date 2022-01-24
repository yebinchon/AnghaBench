#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_vfs ;
struct TYPE_10__ {int nStmtSpill; } ;
struct TYPE_9__ {scalar_t__ eState; scalar_t__ pInJournal; int errCode; scalar_t__ journalMode; scalar_t__ journalHdr; scalar_t__ setMaster; scalar_t__ journalOff; scalar_t__ nRec; int /*<<< orphan*/  jfd; int /*<<< orphan*/  zJournal; scalar_t__ tempFile; int /*<<< orphan*/  dbSize; int /*<<< orphan*/ * pVfs; } ;
typedef  TYPE_1__ Pager ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ PAGER_JOURNALMODE_MEMORY ; 
 scalar_t__ PAGER_JOURNALMODE_OFF ; 
 scalar_t__ PAGER_WRITER_CACHEMOD ; 
 scalar_t__ PAGER_WRITER_LOCKED ; 
 int SQLITE_NOMEM_BKPT ; 
 int SQLITE_OK ; 
 int SQLITE_OPEN_CREATE ; 
 int SQLITE_OPEN_DELETEONCLOSE ; 
 int SQLITE_OPEN_MAIN_JOURNAL ; 
 int SQLITE_OPEN_READWRITE ; 
 int SQLITE_OPEN_TEMP_JOURNAL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 TYPE_3__ sqlite3Config ; 
 int FUNC9 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC12(Pager *pPager){
  int rc = SQLITE_OK;                        /* Return code */
  sqlite3_vfs * const pVfs = pPager->pVfs;   /* Local cache of vfs pointer */

  FUNC1( pPager->eState==PAGER_WRITER_LOCKED );
  FUNC1( FUNC2(pPager) );
  FUNC1( pPager->pInJournal==0 );

  /* If already in the error state, this function is a no-op.  But on
  ** the other hand, this routine is never called if we are already in
  ** an error state. */
  if( FUNC0(pPager->errCode) ) return pPager->errCode;

  if( !FUNC6(pPager) && pPager->journalMode!=PAGER_JOURNALMODE_OFF ){
    pPager->pInJournal = FUNC7(pPager->dbSize);
    if( pPager->pInJournal==0 ){
      return SQLITE_NOMEM_BKPT;
    }

    /* Open the journal file if it is not already open. */
    if( !FUNC4(pPager->jfd) ){
      if( pPager->journalMode==PAGER_JOURNALMODE_MEMORY ){
        FUNC10(pPager->jfd);
      }else{
        int flags = SQLITE_OPEN_READWRITE|SQLITE_OPEN_CREATE;
        int nSpill;

        if( pPager->tempFile ){
          flags |= (SQLITE_OPEN_DELETEONCLOSE|SQLITE_OPEN_TEMP_JOURNAL);
          nSpill = sqlite3Config.nStmtSpill;
        }else{
          flags |= SQLITE_OPEN_MAIN_JOURNAL;
          nSpill = FUNC5(pPager);
        }

        /* Verify that the database still has the same name as it did when
        ** it was originally opened. */
        rc = FUNC3(pPager);
        if( rc==SQLITE_OK ){
          rc = FUNC9 (
              pVfs, pPager->zJournal, pPager->jfd, flags, nSpill
          );
        }
      }
      FUNC1( rc!=SQLITE_OK || FUNC4(pPager->jfd) );
    }


    /* Write the first journal header to the journal file and open
    ** the sub-journal if necessary.
    */
    if( rc==SQLITE_OK ){
      /* TODO: Check if all of these are really required. */
      pPager->nRec = 0;
      pPager->journalOff = 0;
      pPager->setMaster = 0;
      pPager->journalHdr = 0;
      rc = FUNC11(pPager);
    }
  }

  if( rc!=SQLITE_OK ){
    FUNC8(pPager->pInJournal);
    pPager->pInJournal = 0;
  }else{
    FUNC1( pPager->eState==PAGER_WRITER_LOCKED );
    pPager->eState = PAGER_WRITER_CACHEMOD;
  }

  return rc;
}