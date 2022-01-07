
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sync_standby_priority; } ;


 int DEBUG1 ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 TYPE_1__* MyWalSnd ;
 int SyncRepGetStandbyPriority () ;
 int SyncRepLock ;
 int application_name ;
 int ereport (int ,int ) ;
 int errmsg (char*,int ,int) ;

void
SyncRepInitConfig(void)
{
 int priority;





 priority = SyncRepGetStandbyPriority();
 if (MyWalSnd->sync_standby_priority != priority)
 {
  LWLockAcquire(SyncRepLock, LW_EXCLUSIVE);
  MyWalSnd->sync_standby_priority = priority;
  LWLockRelease(SyncRepLock);
  ereport(DEBUG1,
    (errmsg("standby \"%s\" now has synchronous standby priority %u",
      application_name, priority)));
 }
}
