
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* walsnds; int * SyncRepQueue; } ;
typedef TYPE_1__ WalSndCtlData ;
struct TYPE_6__ {int mutex; } ;
typedef TYPE_2__ WalSnd ;


 int MemSet (TYPE_1__*,int ,int ) ;
 int NUM_SYNC_REP_WAIT_MODE ;
 int SHMQueueInit (int *) ;
 scalar_t__ ShmemInitStruct (char*,int ,int*) ;
 int SpinLockInit (int *) ;
 TYPE_1__* WalSndCtl ;
 int WalSndShmemSize () ;
 int max_wal_senders ;

void
WalSndShmemInit(void)
{
 bool found;
 int i;

 WalSndCtl = (WalSndCtlData *)
  ShmemInitStruct("Wal Sender Ctl", WalSndShmemSize(), &found);

 if (!found)
 {

  MemSet(WalSndCtl, 0, WalSndShmemSize());

  for (i = 0; i < NUM_SYNC_REP_WAIT_MODE; i++)
   SHMQueueInit(&(WalSndCtl->SyncRepQueue[i]));

  for (i = 0; i < max_wal_senders; i++)
  {
   WalSnd *walsnd = &WalSndCtl->walsnds[i];

   SpinLockInit(&walsnd->mutex);
  }
 }
}
