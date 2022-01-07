
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ eState; int journalMode; int errCode; scalar_t__ setMaster; scalar_t__ journalHdr; scalar_t__ journalOff; scalar_t__ tempFile; scalar_t__ changeCountDone; int eLock; int jfd; int fd; int exclusiveMode; int pWal; scalar_t__ pInJournal; } ;
typedef TYPE_1__ Pager ;


 int MEMDB ;
 int NO_LOCK ;
 scalar_t__ PAGER_ERROR ;
 int PAGER_JOURNALMODE_DELETE ;
 int PAGER_JOURNALMODE_MEMORY ;
 int PAGER_JOURNALMODE_OFF ;
 int PAGER_JOURNALMODE_PERSIST ;
 int PAGER_JOURNALMODE_TRUNCATE ;
 int PAGER_JOURNALMODE_WAL ;
 scalar_t__ PAGER_OPEN ;
 scalar_t__ PAGER_READER ;
 int SQLITE_IOCAP_UNDELETABLE_WHEN_OPEN ;
 int SQLITE_OK ;
 int UNKNOWN_LOCK ;
 int assert (int) ;
 scalar_t__ isOpen (int ) ;
 int pagerUnlockDb (TYPE_1__*,int ) ;
 scalar_t__ pagerUseWal (TYPE_1__*) ;
 int pager_reset (TYPE_1__*) ;
 int releaseAllSavepoints (TYPE_1__*) ;
 int sqlite3BitvecDestroy (scalar_t__) ;
 int sqlite3OsClose (int ) ;
 int sqlite3OsDeviceCharacteristics (int ) ;
 int sqlite3WalEndReadTransaction (int ) ;

__attribute__((used)) static void pager_unlock(Pager *pPager){

  assert( pPager->eState==PAGER_READER
       || pPager->eState==PAGER_OPEN
       || pPager->eState==PAGER_ERROR
  );

  sqlite3BitvecDestroy(pPager->pInJournal);
  pPager->pInJournal = 0;
  releaseAllSavepoints(pPager);

  if( pagerUseWal(pPager) ){
    assert( !isOpen(pPager->jfd) );
    sqlite3WalEndReadTransaction(pPager->pWal);
    pPager->eState = PAGER_OPEN;
  }else if( !pPager->exclusiveMode ){
    int rc;
    int iDc = isOpen(pPager->fd)?sqlite3OsDeviceCharacteristics(pPager->fd):0;






    assert( (PAGER_JOURNALMODE_MEMORY & 5)!=1 );
    assert( (PAGER_JOURNALMODE_OFF & 5)!=1 );
    assert( (PAGER_JOURNALMODE_WAL & 5)!=1 );
    assert( (PAGER_JOURNALMODE_DELETE & 5)!=1 );
    assert( (PAGER_JOURNALMODE_TRUNCATE & 5)==1 );
    assert( (PAGER_JOURNALMODE_PERSIST & 5)==1 );
    if( 0==(iDc & SQLITE_IOCAP_UNDELETABLE_WHEN_OPEN)
     || 1!=(pPager->journalMode & 5)
    ){
      sqlite3OsClose(pPager->jfd);
    }






    rc = pagerUnlockDb(pPager, NO_LOCK);
    if( rc!=SQLITE_OK && pPager->eState==PAGER_ERROR ){
      pPager->eLock = UNKNOWN_LOCK;
    }





    assert( pPager->errCode || pPager->eState!=PAGER_ERROR );
    pPager->changeCountDone = 0;
    pPager->eState = PAGER_OPEN;
  }






  if( pPager->errCode ){
    assert( !MEMDB );
    pager_reset(pPager);
    pPager->changeCountDone = pPager->tempFile;
    pPager->eState = PAGER_OPEN;
    pPager->errCode = SQLITE_OK;
  }

  pPager->journalOff = 0;
  pPager->journalHdr = 0;
  pPager->setMaster = 0;
}
