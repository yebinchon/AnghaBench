
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_16__ {int errCode; scalar_t__ eState; scalar_t__ dbSize; scalar_t__ doNotSyncSpill; scalar_t__ doNotSpill; } ;
struct TYPE_15__ {int flags; scalar_t__ pgno; scalar_t__ pDirty; TYPE_2__* pPager; } ;
typedef TYPE_1__ PgHdr ;
typedef TYPE_2__ Pager ;


 scalar_t__ NEVER (int) ;
 int PAGERID (TYPE_2__*) ;
 int PAGERTRACE (char*) ;
 scalar_t__ PAGER_WRITER_CACHEMOD ;
 int PGHDR_DIRTY ;
 int PGHDR_NEED_SYNC ;
 int SQLITE_OK ;
 int assert (int) ;
 scalar_t__ pagerUseWal (TYPE_2__*) ;
 int pagerWalFrames (TYPE_2__*,TYPE_1__*,int ,int ) ;
 int pager_error (TYPE_2__*,int) ;
 int pager_write_pagelist (TYPE_2__*,TYPE_1__*) ;
 int sqlite3PcacheMakeClean (TYPE_1__*) ;
 scalar_t__ subjRequiresPage (TYPE_1__*) ;
 int subjournalPage (TYPE_1__*) ;
 int syncJournal (TYPE_2__*,int) ;

__attribute__((used)) static int pagerStress(void *p, PgHdr *pPg){
  Pager *pPager = (Pager *)p;
  int rc = SQLITE_OK;

  assert( pPg->pPager==pPager );
  assert( pPg->flags&PGHDR_DIRTY );
  if( NEVER(pPager->errCode) ) return SQLITE_OK;
  if( pPager->doNotSpill ) return SQLITE_OK;
  if( pPager->doNotSyncSpill && (pPg->flags & PGHDR_NEED_SYNC)!=0 ){
    return SQLITE_OK;
  }

  pPg->pDirty = 0;
  if( pagerUseWal(pPager) ){

    if( subjRequiresPage(pPg) ){
      rc = subjournalPage(pPg);
    }
    if( rc==SQLITE_OK ){
      rc = pagerWalFrames(pPager, pPg, 0, 0);
    }
  }else{


    if( pPg->flags&PGHDR_NEED_SYNC
     || pPager->eState==PAGER_WRITER_CACHEMOD
    ){
      rc = syncJournal(pPager, 1);
    }
    if( NEVER(
        rc==SQLITE_OK && pPg->pgno>pPager->dbSize && subjRequiresPage(pPg)
    ) ){
      rc = subjournalPage(pPg);
    }


    if( rc==SQLITE_OK ){
      assert( (pPg->flags&PGHDR_NEED_SYNC)==0 );
      rc = pager_write_pagelist(pPager, pPg);
    }
  }


  if( rc==SQLITE_OK ){
    PAGERTRACE(("STRESS %d page %d\n", PAGERID(pPager), pPg->pgno));
    sqlite3PcacheMakeClean(pPg);
  }

  return pager_error(pPager, rc);
}
