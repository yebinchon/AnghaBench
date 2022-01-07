
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ eLock; } ;
typedef TYPE_1__ Pager ;


 scalar_t__ EXCLUSIVE_LOCK ;
 scalar_t__ SHARED_LOCK ;
 int SQLITE_OK ;
 int assert (int) ;
 int pagerLockDb (TYPE_1__*,scalar_t__) ;
 int pagerUnlockDb (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static int pagerExclusiveLock(Pager *pPager){
  int rc;

  assert( pPager->eLock==SHARED_LOCK || pPager->eLock==EXCLUSIVE_LOCK );
  rc = pagerLockDb(pPager, EXCLUSIVE_LOCK);
  if( rc!=SQLITE_OK ){


    pagerUnlockDb(pPager, SHARED_LOCK);
  }

  return rc;
}
