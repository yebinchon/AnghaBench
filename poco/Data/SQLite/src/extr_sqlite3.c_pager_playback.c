
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_16__ {scalar_t__ mxPathname; } ;
typedef TYPE_1__ sqlite3_vfs ;
typedef scalar_t__ i64 ;
struct TYPE_17__ {int pageSize; char* pTmpSpace; scalar_t__ journalOff; scalar_t__ journalHdr; scalar_t__ eState; int zJournal; TYPE_1__* pVfs; int jfd; int tempFile; int changeCountDone; int fd; int dbSize; } ;
typedef int Pgno ;
typedef TYPE_2__ Pager ;


 scalar_t__ JOURNAL_HDR_SZ (TYPE_2__*) ;
 scalar_t__ JOURNAL_PG_SZ (TYPE_2__*) ;
 scalar_t__ PAGER_OPEN ;
 scalar_t__ PAGER_WRITER_DBMOD ;
 int SQLITE_ACCESS_EXISTS ;
 int SQLITE_DONE ;
 int SQLITE_FCNTL_DB_UNCHANGED ;
 int SQLITE_IOERR_SHORT_READ ;
 int SQLITE_NOTICE_RECOVER_ROLLBACK ;
 int SQLITE_OK ;
 int assert (int) ;
 int isOpen (int ) ;
 int pager_delmaster (TYPE_2__*,char*) ;
 int pager_end_transaction (TYPE_2__*,int,int ) ;
 int pager_playback_one_page (TYPE_2__*,scalar_t__*,int ,int,int ) ;
 int pager_reset (TYPE_2__*) ;
 int pager_truncate (TYPE_2__*,int ) ;
 int readJournalHdr (TYPE_2__*,int,scalar_t__,int*,int *) ;
 int readMasterJournal (int ,char*,scalar_t__) ;
 int setSectorSize (TYPE_2__*) ;
 int sqlite3OsAccess (TYPE_1__*,char*,int ,int*) ;
 int sqlite3OsFileControlHint (int ,int ,int ) ;
 int sqlite3OsFileSize (int ,scalar_t__*) ;
 int sqlite3PagerSetPagesize (TYPE_2__*,int*,int) ;
 int sqlite3PagerSync (TYPE_2__*,int ) ;
 int sqlite3_log (int ,char*,int,int ) ;
 int testcase (int) ;

__attribute__((used)) static int pager_playback(Pager *pPager, int isHot){
  sqlite3_vfs *pVfs = pPager->pVfs;
  i64 szJ;
  u32 nRec;
  u32 u;
  Pgno mxPg = 0;
  int rc;
  int res = 1;
  char *zMaster = 0;
  int needPagerReset;
  int nPlayback = 0;
  u32 savedPageSize = pPager->pageSize;




  assert( isOpen(pPager->jfd) );
  rc = sqlite3OsFileSize(pPager->jfd, &szJ);
  if( rc!=SQLITE_OK ){
    goto end_playback;
  }
  zMaster = pPager->pTmpSpace;
  rc = readMasterJournal(pPager->jfd, zMaster, pPager->pVfs->mxPathname+1);
  if( rc==SQLITE_OK && zMaster[0] ){
    rc = sqlite3OsAccess(pVfs, zMaster, SQLITE_ACCESS_EXISTS, &res);
  }
  zMaster = 0;
  if( rc!=SQLITE_OK || !res ){
    goto end_playback;
  }
  pPager->journalOff = 0;
  needPagerReset = isHot;





  while( 1 ){





    rc = readJournalHdr(pPager, isHot, szJ, &nRec, &mxPg);
    if( rc!=SQLITE_OK ){
      if( rc==SQLITE_DONE ){
        rc = SQLITE_OK;
      }
      goto end_playback;
    }






    if( nRec==0xffffffff ){
      assert( pPager->journalOff==JOURNAL_HDR_SZ(pPager) );
      nRec = (int)((szJ - JOURNAL_HDR_SZ(pPager))/JOURNAL_PG_SZ(pPager));
    }
    if( nRec==0 && !isHot &&
        pPager->journalHdr+JOURNAL_HDR_SZ(pPager)==pPager->journalOff ){
      nRec = (int)((szJ - pPager->journalOff) / JOURNAL_PG_SZ(pPager));
    }




    if( pPager->journalOff==JOURNAL_HDR_SZ(pPager) ){
      rc = pager_truncate(pPager, mxPg);
      if( rc!=SQLITE_OK ){
        goto end_playback;
      }
      pPager->dbSize = mxPg;
    }




    for(u=0; u<nRec; u++){
      if( needPagerReset ){
        pager_reset(pPager);
        needPagerReset = 0;
      }
      rc = pager_playback_one_page(pPager,&pPager->journalOff,0,1,0);
      if( rc==SQLITE_OK ){
        nPlayback++;
      }else{
        if( rc==SQLITE_DONE ){
          pPager->journalOff = szJ;
          break;
        }else if( rc==SQLITE_IOERR_SHORT_READ ){





          rc = SQLITE_OK;
          goto end_playback;
        }else{





          goto end_playback;
        }
      }
    }
  }

  assert( 0 );

end_playback:
  if( rc==SQLITE_OK ){
    rc = sqlite3PagerSetPagesize(pPager, &savedPageSize, -1);
  }
  pPager->changeCountDone = pPager->tempFile;

  if( rc==SQLITE_OK ){
    zMaster = pPager->pTmpSpace;
    rc = readMasterJournal(pPager->jfd, zMaster, pPager->pVfs->mxPathname+1);
    testcase( rc!=SQLITE_OK );
  }
  if( rc==SQLITE_OK
   && (pPager->eState>=PAGER_WRITER_DBMOD || pPager->eState==PAGER_OPEN)
  ){
    rc = sqlite3PagerSync(pPager, 0);
  }
  if( rc==SQLITE_OK ){
    rc = pager_end_transaction(pPager, zMaster[0]!='\0', 0);
    testcase( rc!=SQLITE_OK );
  }
  if( rc==SQLITE_OK && zMaster[0] && res ){



    rc = pager_delmaster(pPager, zMaster);
    testcase( rc!=SQLITE_OK );
  }
  if( isHot && nPlayback ){
    sqlite3_log(SQLITE_NOTICE_RECOVER_ROLLBACK, "recovered %d pages from %s",
                nPlayback, pPager->zJournal);
  }





  setSectorSize(pPager);
  return rc;
}
