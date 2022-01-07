
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef scalar_t__ i64 ;
struct TYPE_12__ {scalar_t__ eState; scalar_t__ journalOff; scalar_t__ journalHdr; int pageSize; scalar_t__ nSubRec; int pWal; int tempFile; int changeCountDone; int dbOrigSize; int dbSize; } ;
struct TYPE_11__ {scalar_t__ iHdrOffset; scalar_t__ iOffset; scalar_t__ iSubRec; int aWalData; int nOrig; } ;
typedef TYPE_1__ PagerSavepoint ;
typedef TYPE_2__ Pager ;
typedef int Bitvec ;


 scalar_t__ JOURNAL_HDR_SZ (TYPE_2__*) ;
 scalar_t__ JOURNAL_PG_SZ (TYPE_2__*) ;
 scalar_t__ PAGER_ERROR ;
 scalar_t__ PAGER_WRITER_LOCKED ;
 int SQLITE_DONE ;
 int SQLITE_NOMEM_BKPT ;
 int SQLITE_OK ;
 int assert (int) ;
 int pagerRollbackWal (TYPE_2__*) ;
 scalar_t__ pagerUseWal (TYPE_2__*) ;
 int pager_playback_one_page (TYPE_2__*,scalar_t__*,int *,int,int) ;
 int readJournalHdr (TYPE_2__*,int ,scalar_t__,scalar_t__*,scalar_t__*) ;
 int * sqlite3BitvecCreate (int ) ;
 int sqlite3BitvecDestroy (int *) ;
 int sqlite3WalSavepointUndo (int ,int ) ;

__attribute__((used)) static int pagerPlaybackSavepoint(Pager *pPager, PagerSavepoint *pSavepoint){
  i64 szJ;
  i64 iHdrOff;
  int rc = SQLITE_OK;
  Bitvec *pDone = 0;

  assert( pPager->eState!=PAGER_ERROR );
  assert( pPager->eState>=PAGER_WRITER_LOCKED );


  if( pSavepoint ){
    pDone = sqlite3BitvecCreate(pSavepoint->nOrig);
    if( !pDone ){
      return SQLITE_NOMEM_BKPT;
    }
  }




  pPager->dbSize = pSavepoint ? pSavepoint->nOrig : pPager->dbOrigSize;
  pPager->changeCountDone = pPager->tempFile;

  if( !pSavepoint && pagerUseWal(pPager) ){
    return pagerRollbackWal(pPager);
  }






  szJ = pPager->journalOff;
  assert( pagerUseWal(pPager)==0 || szJ==0 );
  if( pSavepoint && !pagerUseWal(pPager) ){
    iHdrOff = pSavepoint->iHdrOffset ? pSavepoint->iHdrOffset : szJ;
    pPager->journalOff = pSavepoint->iOffset;
    while( rc==SQLITE_OK && pPager->journalOff<iHdrOff ){
      rc = pager_playback_one_page(pPager, &pPager->journalOff, pDone, 1, 1);
    }
    assert( rc!=SQLITE_DONE );
  }else{
    pPager->journalOff = 0;
  }






  while( rc==SQLITE_OK && pPager->journalOff<szJ ){
    u32 ii;
    u32 nJRec = 0;
    u32 dummy;
    rc = readJournalHdr(pPager, 0, szJ, &nJRec, &dummy);
    assert( rc!=SQLITE_DONE );






    if( nJRec==0
     && pPager->journalHdr+JOURNAL_HDR_SZ(pPager)==pPager->journalOff
    ){
      nJRec = (u32)((szJ - pPager->journalOff)/JOURNAL_PG_SZ(pPager));
    }
    for(ii=0; rc==SQLITE_OK && ii<nJRec && pPager->journalOff<szJ; ii++){
      rc = pager_playback_one_page(pPager, &pPager->journalOff, pDone, 1, 1);
    }
    assert( rc!=SQLITE_DONE );
  }
  assert( rc!=SQLITE_OK || pPager->journalOff>=szJ );





  if( pSavepoint ){
    u32 ii;
    i64 offset = (i64)pSavepoint->iSubRec*(4+pPager->pageSize);

    if( pagerUseWal(pPager) ){
      rc = sqlite3WalSavepointUndo(pPager->pWal, pSavepoint->aWalData);
    }
    for(ii=pSavepoint->iSubRec; rc==SQLITE_OK && ii<pPager->nSubRec; ii++){
      assert( offset==(i64)ii*(4+pPager->pageSize) );
      rc = pager_playback_one_page(pPager, &offset, pDone, 0, 1);
    }
    assert( rc!=SQLITE_DONE );
  }

  sqlite3BitvecDestroy(pDone);
  if( rc==SQLITE_OK ){
    pPager->journalOff = szJ;
  }

  return rc;
}
