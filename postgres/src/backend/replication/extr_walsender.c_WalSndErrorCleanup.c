
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ws_file; } ;


 int ConditionVariableCancelSleep () ;
 int LWLockReleaseAll () ;
 int * MyReplicationSlot ;
 int ReplicationSlotCleanup () ;
 int ReplicationSlotRelease () ;
 int WALSNDSTATE_STARTUP ;
 int WalSndSetState (int ) ;
 int close (int) ;
 scalar_t__ got_SIGUSR2 ;
 scalar_t__ got_STOPPING ;
 int pgstat_report_wait_end () ;
 int proc_exit (int ) ;
 int replication_active ;
 TYPE_1__* sendSeg ;

void
WalSndErrorCleanup(void)
{
 LWLockReleaseAll();
 ConditionVariableCancelSleep();
 pgstat_report_wait_end();

 if (sendSeg->ws_file >= 0)
 {
  close(sendSeg->ws_file);
  sendSeg->ws_file = -1;
 }

 if (MyReplicationSlot != ((void*)0))
  ReplicationSlotRelease();

 ReplicationSlotCleanup();

 replication_active = 0;

 if (got_STOPPING || got_SIGUSR2)
  proc_exit(0);


 WalSndSetState(WALSNDSTATE_STARTUP);
}
