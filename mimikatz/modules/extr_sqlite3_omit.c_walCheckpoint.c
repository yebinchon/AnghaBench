
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_10__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct TYPE_19__ {scalar_t__ isInterrupted; } ;
struct TYPE_21__ {scalar_t__ mallocFailed; TYPE_1__ u1; } ;
typedef TYPE_3__ sqlite3 ;
typedef int i64 ;
typedef int WalIterator ;
struct TYPE_22__ {scalar_t__ nBackfill; scalar_t__* aReadMark; scalar_t__ nBackfillAttempted; } ;
typedef TYPE_4__ WalCkptInfo ;
struct TYPE_20__ {scalar_t__ mxFrame; scalar_t__ nPage; } ;
struct TYPE_23__ {int writeLock; int pWalFd; TYPE_2__ hdr; int pDbFd; } ;
typedef TYPE_5__ Wal ;
struct TYPE_18__ {scalar_t__ mxFrame; } ;


 int CKPT_SYNC_FLAGS (int) ;
 int IS_BIG_INT (int) ;
 scalar_t__ READMARK_NOT_USED ;
 int SQLITE_BUSY ;
 int SQLITE_CHECKPOINT_PASSIVE ;
 int SQLITE_CHECKPOINT_RESTART ;
 int SQLITE_CHECKPOINT_TRUNCATE ;
 int SQLITE_FCNTL_SIZE_HINT ;
 int SQLITE_INTERRUPT ;
 int SQLITE_NOMEM_BKPT ;
 int SQLITE_OK ;
 int WAL_FRAME_HDRSIZE ;
 int WAL_NREADER ;
 int WAL_READ_LOCK (int) ;
 int assert (int) ;
 int sqlite3OsFileControlHint (int ,int ,int*) ;
 int sqlite3OsFileSize (int ,int*) ;
 int sqlite3OsRead (int ,int *,int,int) ;
 int sqlite3OsSync (int ,int ) ;
 int sqlite3OsTruncate (int ,int) ;
 int sqlite3OsWrite (int ,int *,int,int) ;
 int sqlite3_randomness (int,scalar_t__*) ;
 int testcase (int) ;
 int walBusyLock (TYPE_5__*,int (*) (void*),void*,int ,int) ;
 TYPE_4__* walCkptInfo (TYPE_5__*) ;
 int walFrameOffset (scalar_t__,int) ;
 scalar_t__ walFramePgno (TYPE_5__*,scalar_t__) ;
 TYPE_10__* walIndexHdr (TYPE_5__*) ;
 int walIteratorFree (int *) ;
 int walIteratorInit (TYPE_5__*,scalar_t__,int **) ;
 scalar_t__ walIteratorNext (int *,scalar_t__*,scalar_t__*) ;
 int walPagesize (TYPE_5__*) ;
 int walRestartHdr (TYPE_5__*,scalar_t__) ;
 int walUnlockExclusive (TYPE_5__*,int ,int) ;

__attribute__((used)) static int walCheckpoint(
  Wal *pWal,
  sqlite3 *db,
  int eMode,
  int (*xBusy)(void*),
  void *pBusyArg,
  int sync_flags,
  u8 *zBuf
){
  int rc = SQLITE_OK;
  int szPage;
  WalIterator *pIter = 0;
  u32 iDbpage = 0;
  u32 iFrame = 0;
  u32 mxSafeFrame;
  u32 mxPage;
  int i;
  volatile WalCkptInfo *pInfo;

  szPage = walPagesize(pWal);
  testcase( szPage<=32768 );
  testcase( szPage>=65536 );
  pInfo = walCkptInfo(pWal);
  if( pInfo->nBackfill<pWal->hdr.mxFrame ){



    assert( eMode!=SQLITE_CHECKPOINT_PASSIVE || xBusy==0 );






    mxSafeFrame = pWal->hdr.mxFrame;
    mxPage = pWal->hdr.nPage;
    for(i=1; i<WAL_NREADER; i++){
      u32 y = pInfo->aReadMark[i];
      if( mxSafeFrame>y ){
        assert( y<=pWal->hdr.mxFrame );
        rc = walBusyLock(pWal, xBusy, pBusyArg, WAL_READ_LOCK(i), 1);
        if( rc==SQLITE_OK ){
          pInfo->aReadMark[i] = (i==1 ? mxSafeFrame : READMARK_NOT_USED);
          walUnlockExclusive(pWal, WAL_READ_LOCK(i), 1);
        }else if( rc==SQLITE_BUSY ){
          mxSafeFrame = y;
          xBusy = 0;
        }else{
          goto walcheckpoint_out;
        }
      }
    }


    if( pInfo->nBackfill<mxSafeFrame ){
      rc = walIteratorInit(pWal, pInfo->nBackfill, &pIter);
      assert( rc==SQLITE_OK || pIter==0 );
    }

    if( pIter
     && (rc = walBusyLock(pWal, xBusy, pBusyArg, WAL_READ_LOCK(0),1))==SQLITE_OK
    ){
      u32 nBackfill = pInfo->nBackfill;

      pInfo->nBackfillAttempted = mxSafeFrame;


      rc = sqlite3OsSync(pWal->pWalFd, CKPT_SYNC_FLAGS(sync_flags));




      if( rc==SQLITE_OK ){
        i64 nReq = ((i64)mxPage * szPage);
        i64 nSize;
        rc = sqlite3OsFileSize(pWal->pDbFd, &nSize);
        if( rc==SQLITE_OK && nSize<nReq ){
          sqlite3OsFileControlHint(pWal->pDbFd, SQLITE_FCNTL_SIZE_HINT, &nReq);
        }
      }



      while( rc==SQLITE_OK && 0==walIteratorNext(pIter, &iDbpage, &iFrame) ){
        i64 iOffset;
        assert( walFramePgno(pWal, iFrame)==iDbpage );
        if( db->u1.isInterrupted ){
          rc = db->mallocFailed ? SQLITE_NOMEM_BKPT : SQLITE_INTERRUPT;
          break;
        }
        if( iFrame<=nBackfill || iFrame>mxSafeFrame || iDbpage>mxPage ){
          continue;
        }
        iOffset = walFrameOffset(iFrame, szPage) + WAL_FRAME_HDRSIZE;

        rc = sqlite3OsRead(pWal->pWalFd, zBuf, szPage, iOffset);
        if( rc!=SQLITE_OK ) break;
        iOffset = (iDbpage-1)*(i64)szPage;
        testcase( IS_BIG_INT(iOffset) );
        rc = sqlite3OsWrite(pWal->pDbFd, zBuf, szPage, iOffset);
        if( rc!=SQLITE_OK ) break;
      }


      if( rc==SQLITE_OK ){
        if( mxSafeFrame==walIndexHdr(pWal)->mxFrame ){
          i64 szDb = pWal->hdr.nPage*(i64)szPage;
          testcase( IS_BIG_INT(szDb) );
          rc = sqlite3OsTruncate(pWal->pDbFd, szDb);
          if( rc==SQLITE_OK ){
            rc = sqlite3OsSync(pWal->pDbFd, CKPT_SYNC_FLAGS(sync_flags));
          }
        }
        if( rc==SQLITE_OK ){
          pInfo->nBackfill = mxSafeFrame;
        }
      }


      walUnlockExclusive(pWal, WAL_READ_LOCK(0), 1);
    }

    if( rc==SQLITE_BUSY ){


      rc = SQLITE_OK;
    }
  }






  if( rc==SQLITE_OK && eMode!=SQLITE_CHECKPOINT_PASSIVE ){
    assert( pWal->writeLock );
    if( pInfo->nBackfill<pWal->hdr.mxFrame ){
      rc = SQLITE_BUSY;
    }else if( eMode>=SQLITE_CHECKPOINT_RESTART ){
      u32 salt1;
      sqlite3_randomness(4, &salt1);
      assert( pInfo->nBackfill==pWal->hdr.mxFrame );
      rc = walBusyLock(pWal, xBusy, pBusyArg, WAL_READ_LOCK(1), WAL_NREADER-1);
      if( rc==SQLITE_OK ){
        if( eMode==SQLITE_CHECKPOINT_TRUNCATE ){
          walRestartHdr(pWal, salt1);
          rc = sqlite3OsTruncate(pWal->pWalFd, 0);
        }
        walUnlockExclusive(pWal, WAL_READ_LOCK(1), WAL_NREADER-1);
      }
    }
  }

 walcheckpoint_out:
  walIteratorFree(pIter);
  return rc;
}
