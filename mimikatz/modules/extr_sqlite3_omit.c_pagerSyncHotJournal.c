
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int journalHdr; int jfd; int noSync; } ;
typedef TYPE_1__ Pager ;


 int SQLITE_OK ;
 int SQLITE_SYNC_NORMAL ;
 int sqlite3OsFileSize (int ,int *) ;
 int sqlite3OsSync (int ,int ) ;

__attribute__((used)) static int pagerSyncHotJournal(Pager *pPager){
  int rc = SQLITE_OK;
  if( !pPager->noSync ){
    rc = sqlite3OsSync(pPager->jfd, SQLITE_SYNC_NORMAL);
  }
  if( rc==SQLITE_OK ){
    rc = sqlite3OsFileSize(pPager->jfd, &pPager->journalHdr);
  }
  return rc;
}
