
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int sqlite3_vfs ;
struct TYPE_7__ {scalar_t__ eState; scalar_t__ pInJournal; int errCode; scalar_t__ journalMode; scalar_t__ journalHdr; scalar_t__ setMaster; scalar_t__ journalOff; scalar_t__ nRec; int jfd; int zJournal; scalar_t__ tempFile; int dbSize; int * pVfs; } ;
typedef TYPE_1__ Pager ;


 scalar_t__ NEVER (int) ;
 scalar_t__ PAGER_JOURNALMODE_MEMORY ;
 scalar_t__ PAGER_JOURNALMODE_OFF ;
 scalar_t__ PAGER_WRITER_CACHEMOD ;
 scalar_t__ PAGER_WRITER_LOCKED ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int SQLITE_OPEN_CREATE ;
 int SQLITE_OPEN_DELETEONCLOSE ;
 int SQLITE_OPEN_MAIN_JOURNAL ;
 int SQLITE_OPEN_READWRITE ;
 int SQLITE_OPEN_TEMP_JOURNAL ;
 int assert (int) ;
 int assert_pager_state (TYPE_1__*) ;
 scalar_t__ isOpen (int ) ;
 int jrnlBufferSize (TYPE_1__*) ;
 int pagerUseWal (TYPE_1__*) ;
 scalar_t__ sqlite3BitvecCreate (int ) ;
 int sqlite3BitvecDestroy (scalar_t__) ;
 int sqlite3JournalOpen (int * const,int ,int ,int const,int ) ;
 int sqlite3MemJournalOpen (int ) ;
 int sqlite3OsOpen (int * const,int ,int ,int const,int ) ;
 int writeJournalHdr (TYPE_1__*) ;

__attribute__((used)) static int pager_open_journal(Pager *pPager){
  int rc = SQLITE_OK;
  sqlite3_vfs * const pVfs = pPager->pVfs;

  assert( pPager->eState==PAGER_WRITER_LOCKED );
  assert( assert_pager_state(pPager) );
  assert( pPager->pInJournal==0 );




  if( NEVER(pPager->errCode) ) return pPager->errCode;

  if( !pagerUseWal(pPager) && pPager->journalMode!=PAGER_JOURNALMODE_OFF ){
    pPager->pInJournal = sqlite3BitvecCreate(pPager->dbSize);
    if( pPager->pInJournal==0 ){
      return SQLITE_NOMEM;
    }


    if( !isOpen(pPager->jfd) ){
      if( pPager->journalMode==PAGER_JOURNALMODE_MEMORY ){
        sqlite3MemJournalOpen(pPager->jfd);
      }else{
        const int flags =
          SQLITE_OPEN_READWRITE|SQLITE_OPEN_CREATE|
          (pPager->tempFile ?
            (SQLITE_OPEN_DELETEONCLOSE|SQLITE_OPEN_TEMP_JOURNAL):
            (SQLITE_OPEN_MAIN_JOURNAL)
          );





        rc = sqlite3OsOpen(pVfs, pPager->zJournal, pPager->jfd, flags, 0);

      }
      assert( rc!=SQLITE_OK || isOpen(pPager->jfd) );
    }





    if( rc==SQLITE_OK ){

      pPager->nRec = 0;
      pPager->journalOff = 0;
      pPager->setMaster = 0;
      pPager->journalHdr = 0;
      rc = writeJournalHdr(pPager);
    }
  }

  if( rc!=SQLITE_OK ){
    sqlite3BitvecDestroy(pPager->pInJournal);
    pPager->pInJournal = 0;
  }else{
    assert( pPager->eState==PAGER_WRITER_LOCKED );
    pPager->eState = PAGER_WRITER_CACHEMOD;
  }

  return rc;
}
