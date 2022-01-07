
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sync_standbys_defined; } ;


 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int NUM_SYNC_REP_WAIT_MODE ;
 int SyncRepLock ;
 int SyncRepWakeQueue (int,int) ;
 int SyncStandbysDefined () ;
 TYPE_1__* WalSndCtl ;

void
SyncRepUpdateSyncStandbysDefined(void)
{
 bool sync_standbys_defined = SyncStandbysDefined();

 if (sync_standbys_defined != WalSndCtl->sync_standbys_defined)
 {
  LWLockAcquire(SyncRepLock, LW_EXCLUSIVE);






  if (!sync_standbys_defined)
  {
   int i;

   for (i = 0; i < NUM_SYNC_REP_WAIT_MODE; i++)
    SyncRepWakeQueue(1, i);
  }
  WalSndCtl->sync_standbys_defined = sync_standbys_defined;

  LWLockRelease(SyncRepLock);
 }
}
