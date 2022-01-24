#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct TYPE_19__ {scalar_t__ isInterrupted; } ;
struct TYPE_21__ {scalar_t__ mallocFailed; TYPE_1__ u1; } ;
typedef  TYPE_3__ sqlite3 ;
typedef  int i64 ;
typedef  int /*<<< orphan*/  WalIterator ;
struct TYPE_22__ {scalar_t__ nBackfill; scalar_t__* aReadMark; scalar_t__ nBackfillAttempted; } ;
typedef  TYPE_4__ WalCkptInfo ;
struct TYPE_20__ {scalar_t__ mxFrame; scalar_t__ nPage; } ;
struct TYPE_23__ {int writeLock; int /*<<< orphan*/  pWalFd; TYPE_2__ hdr; int /*<<< orphan*/  pDbFd; } ;
typedef  TYPE_5__ Wal ;
struct TYPE_18__ {scalar_t__ mxFrame; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 scalar_t__ READMARK_NOT_USED ; 
 int SQLITE_BUSY ; 
 int SQLITE_CHECKPOINT_PASSIVE ; 
 int SQLITE_CHECKPOINT_RESTART ; 
 int SQLITE_CHECKPOINT_TRUNCATE ; 
 int /*<<< orphan*/  SQLITE_FCNTL_SIZE_HINT ; 
 int SQLITE_INTERRUPT ; 
 int SQLITE_NOMEM_BKPT ; 
 int SQLITE_OK ; 
 int WAL_FRAME_HDRSIZE ; 
 int WAL_NREADER ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int FUNC12 (TYPE_5__*,int (*) (void*),void*,int /*<<< orphan*/ ,int) ; 
 TYPE_4__* FUNC13 (TYPE_5__*) ; 
 int FUNC14 (scalar_t__,int) ; 
 scalar_t__ FUNC15 (TYPE_5__*,scalar_t__) ; 
 TYPE_10__* FUNC16 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int FUNC18 (TYPE_5__*,scalar_t__,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *,scalar_t__*,scalar_t__*) ; 
 int FUNC20 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_5__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC23(
  Wal *pWal,                      /* Wal connection */
  sqlite3 *db,                    /* Check for interrupts on this handle */
  int eMode,                      /* One of PASSIVE, FULL or RESTART */
  int (*xBusy)(void*),            /* Function to call when busy */
  void *pBusyArg,                 /* Context argument for xBusyHandler */
  int sync_flags,                 /* Flags for OsSync() (or 0) */
  u8 *zBuf                        /* Temporary buffer to use */
){
  int rc = SQLITE_OK;             /* Return code */
  int szPage;                     /* Database page-size */
  WalIterator *pIter = 0;         /* Wal iterator context */
  u32 iDbpage = 0;                /* Next database page to write */
  u32 iFrame = 0;                 /* Wal frame containing data for iDbpage */
  u32 mxSafeFrame;                /* Max frame that can be backfilled */
  u32 mxPage;                     /* Max database page to write */
  int i;                          /* Loop counter */
  volatile WalCkptInfo *pInfo;    /* The checkpoint status information */

  szPage = FUNC20(pWal);
  FUNC11( szPage<=32768 );
  FUNC11( szPage>=65536 );
  pInfo = FUNC13(pWal);
  if( pInfo->nBackfill<pWal->hdr.mxFrame ){

    /* EVIDENCE-OF: R-62920-47450 The busy-handler callback is never invoked
    ** in the SQLITE_CHECKPOINT_PASSIVE mode. */
    FUNC3( eMode!=SQLITE_CHECKPOINT_PASSIVE || xBusy==0 );

    /* Compute in mxSafeFrame the index of the last frame of the WAL that is
    ** safe to write into the database.  Frames beyond mxSafeFrame might
    ** overwrite database pages that are in use by active readers and thus
    ** cannot be backfilled from the WAL.
    */
    mxSafeFrame = pWal->hdr.mxFrame;
    mxPage = pWal->hdr.nPage;
    for(i=1; i<WAL_NREADER; i++){
      /* Thread-sanitizer reports that the following is an unsafe read,
      ** as some other thread may be in the process of updating the value
      ** of the aReadMark[] slot. The assumption here is that if that is
      ** happening, the other client may only be increasing the value,
      ** not decreasing it. So assuming either that either the "old" or
      ** "new" version of the value is read, and not some arbitrary value
      ** that would never be written by a real client, things are still 
      ** safe.  */
      u32 y = pInfo->aReadMark[i];
      if( mxSafeFrame>y ){
        FUNC3( y<=pWal->hdr.mxFrame );
        rc = FUNC12(pWal, xBusy, pBusyArg, FUNC2(i), 1);
        if( rc==SQLITE_OK ){
          pInfo->aReadMark[i] = (i==1 ? mxSafeFrame : READMARK_NOT_USED);
          FUNC22(pWal, FUNC2(i), 1);
        }else if( rc==SQLITE_BUSY ){
          mxSafeFrame = y;
          xBusy = 0;
        }else{
          goto walcheckpoint_out;
        }
      }
    }

    /* Allocate the iterator */
    if( pInfo->nBackfill<mxSafeFrame ){
      rc = FUNC18(pWal, pInfo->nBackfill, &pIter);
      FUNC3( rc==SQLITE_OK || pIter==0 );
    }

    if( pIter
     && (rc = FUNC12(pWal, xBusy, pBusyArg, FUNC2(0),1))==SQLITE_OK
    ){
      u32 nBackfill = pInfo->nBackfill;

      pInfo->nBackfillAttempted = mxSafeFrame;

      /* Sync the WAL to disk */
      rc = FUNC7(pWal->pWalFd, FUNC0(sync_flags));

      /* If the database may grow as a result of this checkpoint, hint
      ** about the eventual size of the db file to the VFS layer.
      */
      if( rc==SQLITE_OK ){
        i64 nReq = ((i64)mxPage * szPage);
        i64 nSize;                    /* Current size of database file */
        rc = FUNC5(pWal->pDbFd, &nSize);
        if( rc==SQLITE_OK && nSize<nReq ){
          FUNC4(pWal->pDbFd, SQLITE_FCNTL_SIZE_HINT, &nReq);
        }
      }


      /* Iterate through the contents of the WAL, copying data to the db file */
      while( rc==SQLITE_OK && 0==FUNC19(pIter, &iDbpage, &iFrame) ){
        i64 iOffset;
        FUNC3( FUNC15(pWal, iFrame)==iDbpage );
        if( db->u1.isInterrupted ){
          rc = db->mallocFailed ? SQLITE_NOMEM_BKPT : SQLITE_INTERRUPT;
          break;
        }
        if( iFrame<=nBackfill || iFrame>mxSafeFrame || iDbpage>mxPage ){
          continue;
        }
        iOffset = FUNC14(iFrame, szPage) + WAL_FRAME_HDRSIZE;
        /* testcase( IS_BIG_INT(iOffset) ); // requires a 4GiB WAL file */
        rc = FUNC6(pWal->pWalFd, zBuf, szPage, iOffset);
        if( rc!=SQLITE_OK ) break;
        iOffset = (iDbpage-1)*(i64)szPage;
        FUNC11( FUNC1(iOffset) );
        rc = FUNC9(pWal->pDbFd, zBuf, szPage, iOffset);
        if( rc!=SQLITE_OK ) break;
      }

      /* If work was actually accomplished... */
      if( rc==SQLITE_OK ){
        if( mxSafeFrame==FUNC16(pWal)->mxFrame ){
          i64 szDb = pWal->hdr.nPage*(i64)szPage;
          FUNC11( FUNC1(szDb) );
          rc = FUNC8(pWal->pDbFd, szDb);
          if( rc==SQLITE_OK ){
            rc = FUNC7(pWal->pDbFd, FUNC0(sync_flags));
          }
        }
        if( rc==SQLITE_OK ){
          pInfo->nBackfill = mxSafeFrame;
        }
      }

      /* Release the reader lock held while backfilling */
      FUNC22(pWal, FUNC2(0), 1);
    }

    if( rc==SQLITE_BUSY ){
      /* Reset the return code so as not to report a checkpoint failure
      ** just because there are active readers.  */
      rc = SQLITE_OK;
    }
  }

  /* If this is an SQLITE_CHECKPOINT_RESTART or TRUNCATE operation, and the
  ** entire wal file has been copied into the database file, then block 
  ** until all readers have finished using the wal file. This ensures that 
  ** the next process to write to the database restarts the wal file.
  */
  if( rc==SQLITE_OK && eMode!=SQLITE_CHECKPOINT_PASSIVE ){
    FUNC3( pWal->writeLock );
    if( pInfo->nBackfill<pWal->hdr.mxFrame ){
      rc = SQLITE_BUSY;
    }else if( eMode>=SQLITE_CHECKPOINT_RESTART ){
      u32 salt1;
      FUNC10(4, &salt1);
      FUNC3( pInfo->nBackfill==pWal->hdr.mxFrame );
      rc = FUNC12(pWal, xBusy, pBusyArg, FUNC2(1), WAL_NREADER-1);
      if( rc==SQLITE_OK ){
        if( eMode==SQLITE_CHECKPOINT_TRUNCATE ){
          /* IMPLEMENTATION-OF: R-44699-57140 This mode works the same way as
          ** SQLITE_CHECKPOINT_RESTART with the addition that it also
          ** truncates the log file to zero bytes just prior to a
          ** successful return.
          **
          ** In theory, it might be safe to do this without updating the
          ** wal-index header in shared memory, as all subsequent reader or
          ** writer clients should see that the entire log file has been
          ** checkpointed and behave accordingly. This seems unsafe though,
          ** as it would leave the system in a state where the contents of
          ** the wal-index header do not match the contents of the 
          ** file-system. To avoid this, update the wal-index header to
          ** indicate that the log file contains zero valid frames.  */
          FUNC21(pWal, salt1);
          rc = FUNC8(pWal->pWalFd, 0);
        }
        FUNC22(pWal, FUNC2(1), WAL_NREADER-1);
      }
    }
  }

 walcheckpoint_out:
  FUNC17(pIter);
  return rc;
}