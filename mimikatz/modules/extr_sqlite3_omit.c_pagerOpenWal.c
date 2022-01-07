
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ pWal; scalar_t__ tempFile; scalar_t__ eLock; int journalSizeLimit; scalar_t__ exclusiveMode; int zWal; int fd; int pVfs; } ;
typedef TYPE_1__ Pager ;


 scalar_t__ EXCLUSIVE_LOCK ;
 scalar_t__ SHARED_LOCK ;
 int SQLITE_OK ;
 int assert (int) ;
 int pagerExclusiveLock (TYPE_1__*) ;
 int pagerFixMaplimit (TYPE_1__*) ;
 int sqlite3WalOpen (int ,int ,int ,scalar_t__,int ,scalar_t__*) ;

__attribute__((used)) static int pagerOpenWal(Pager *pPager){
  int rc = SQLITE_OK;

  assert( pPager->pWal==0 && pPager->tempFile==0 );
  assert( pPager->eLock==SHARED_LOCK || pPager->eLock==EXCLUSIVE_LOCK );






  if( pPager->exclusiveMode ){
    rc = pagerExclusiveLock(pPager);
  }




  if( rc==SQLITE_OK ){
    rc = sqlite3WalOpen(pPager->pVfs,
        pPager->fd, pPager->zWal, pPager->exclusiveMode,
        pPager->journalSizeLimit, &pPager->pWal
    );
  }
  pagerFixMaplimit(pPager);

  return rc;
}
