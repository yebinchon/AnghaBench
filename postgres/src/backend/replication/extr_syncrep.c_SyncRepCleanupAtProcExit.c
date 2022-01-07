
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int syncRepLinks; } ;


 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 TYPE_1__* MyProc ;
 int SHMQueueDelete (int *) ;
 int SHMQueueIsDetached (int *) ;
 int SyncRepLock ;

void
SyncRepCleanupAtProcExit(void)
{




 if (!SHMQueueIsDetached(&(MyProc->syncRepLinks)))
 {
  LWLockAcquire(SyncRepLock, LW_EXCLUSIVE);


  if (!SHMQueueIsDetached(&(MyProc->syncRepLinks)))
   SHMQueueDelete(&(MyProc->syncRepLinks));

  LWLockRelease(SyncRepLock);
 }
}
