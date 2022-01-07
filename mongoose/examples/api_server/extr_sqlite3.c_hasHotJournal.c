
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int sqlite3_vfs ;
struct TYPE_6__ {int useJournal; scalar_t__ eState; int jfd; int zJournal; int exclusiveMode; int fd; int * pVfs; } ;
typedef scalar_t__ Pgno ;
typedef TYPE_1__ Pager ;


 scalar_t__ PAGER_OPEN ;
 int RESERVED_LOCK ;
 int SHARED_LOCK ;
 int SQLITE_ACCESS_EXISTS ;
 int SQLITE_CANTOPEN ;
 int SQLITE_IOCAP_UNDELETABLE_WHEN_OPEN ;
 int SQLITE_IOERR_SHORT_READ ;
 int SQLITE_OK ;
 int SQLITE_OPEN_MAIN_JOURNAL ;
 int SQLITE_OPEN_READONLY ;
 int assert (int) ;
 int isOpen (int ) ;
 int pagerLockDb (TYPE_1__*,int ) ;
 int pagerPagecount (TYPE_1__*,scalar_t__*) ;
 int pagerUnlockDb (TYPE_1__*,int ) ;
 int sqlite3BeginBenignMalloc () ;
 int sqlite3EndBenignMalloc () ;
 int sqlite3OsAccess (int * const,int ,int ,int*) ;
 int sqlite3OsCheckReservedLock (int ,int*) ;
 int sqlite3OsClose (int ) ;
 int sqlite3OsDelete (int * const,int ,int ) ;
 int sqlite3OsDeviceCharacteristics (int ) ;
 int sqlite3OsOpen (int * const,int ,int ,int,int*) ;
 int sqlite3OsRead (int ,void*,int,int ) ;

__attribute__((used)) static int hasHotJournal(Pager *pPager, int *pExists){
  sqlite3_vfs * const pVfs = pPager->pVfs;
  int rc = SQLITE_OK;
  int exists = 1;
  int jrnlOpen = !!isOpen(pPager->jfd);

  assert( pPager->useJournal );
  assert( isOpen(pPager->fd) );
  assert( pPager->eState==PAGER_OPEN );

  assert( jrnlOpen==0 || ( sqlite3OsDeviceCharacteristics(pPager->jfd) &
    SQLITE_IOCAP_UNDELETABLE_WHEN_OPEN
  ));

  *pExists = 0;
  if( !jrnlOpen ){
    rc = sqlite3OsAccess(pVfs, pPager->zJournal, SQLITE_ACCESS_EXISTS, &exists);
  }
  if( rc==SQLITE_OK && exists ){
    int locked = 0;
    rc = sqlite3OsCheckReservedLock(pPager->fd, &locked);
    if( rc==SQLITE_OK && !locked ){
      Pgno nPage;







      rc = pagerPagecount(pPager, &nPage);
      if( rc==SQLITE_OK ){
        if( nPage==0 ){
          sqlite3BeginBenignMalloc();
          if( pagerLockDb(pPager, RESERVED_LOCK)==SQLITE_OK ){
            sqlite3OsDelete(pVfs, pPager->zJournal, 0);
            if( !pPager->exclusiveMode ) pagerUnlockDb(pPager, SHARED_LOCK);
          }
          sqlite3EndBenignMalloc();
        }else{






          if( !jrnlOpen ){
            int f = SQLITE_OPEN_READONLY|SQLITE_OPEN_MAIN_JOURNAL;
            rc = sqlite3OsOpen(pVfs, pPager->zJournal, pPager->jfd, f, &f);
          }
          if( rc==SQLITE_OK ){
            u8 first = 0;
            rc = sqlite3OsRead(pPager->jfd, (void *)&first, 1, 0);
            if( rc==SQLITE_IOERR_SHORT_READ ){
              rc = SQLITE_OK;
            }
            if( !jrnlOpen ){
              sqlite3OsClose(pPager->jfd);
            }
            *pExists = (first!=0);
          }else if( rc==SQLITE_CANTOPEN ){
            *pExists = 1;
            rc = SQLITE_OK;
          }
        }
      }
    }
  }

  return rc;
}
