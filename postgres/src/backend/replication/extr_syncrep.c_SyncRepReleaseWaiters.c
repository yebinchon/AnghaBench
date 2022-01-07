
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32 ;
typedef int XLogRecPtr ;
struct TYPE_5__ {int* lsn; } ;
typedef TYPE_1__ WalSndCtlData ;
struct TYPE_7__ {scalar_t__ sync_standby_priority; scalar_t__ state; int flush; } ;
struct TYPE_6__ {scalar_t__ syncrep_method; } ;


 int DEBUG3 ;
 int LOG ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 TYPE_4__* MyWalSnd ;
 scalar_t__ SYNC_REP_PRIORITY ;
 size_t SYNC_REP_WAIT_APPLY ;
 size_t SYNC_REP_WAIT_FLUSH ;
 size_t SYNC_REP_WAIT_WRITE ;
 TYPE_3__* SyncRepConfig ;
 int SyncRepGetSyncRecPtr (int*,int*,int*,int*) ;
 int SyncRepLock ;
 int SyncRepWakeQueue (int,size_t) ;
 scalar_t__ WALSNDSTATE_STOPPING ;
 scalar_t__ WALSNDSTATE_STREAMING ;
 TYPE_1__* WalSndCtl ;
 scalar_t__ XLogRecPtrIsInvalid (int ) ;
 int announce_next_takeover ;
 int application_name ;
 int elog (int ,char*,int,int ,int ,int,int ,int ,int,int ,int ) ;
 int ereport (int ,int ) ;
 int errmsg (char*,int ,...) ;

void
SyncRepReleaseWaiters(void)
{
 volatile WalSndCtlData *walsndctl = WalSndCtl;
 XLogRecPtr writePtr;
 XLogRecPtr flushPtr;
 XLogRecPtr applyPtr;
 bool got_recptr;
 bool am_sync;
 int numwrite = 0;
 int numflush = 0;
 int numapply = 0;
 if (MyWalSnd->sync_standby_priority == 0 ||
  (MyWalSnd->state != WALSNDSTATE_STREAMING &&
   MyWalSnd->state != WALSNDSTATE_STOPPING) ||
  XLogRecPtrIsInvalid(MyWalSnd->flush))
 {
  announce_next_takeover = 1;
  return;
 }





 LWLockAcquire(SyncRepLock, LW_EXCLUSIVE);





 got_recptr = SyncRepGetSyncRecPtr(&writePtr, &flushPtr, &applyPtr, &am_sync);





 if (announce_next_takeover && am_sync)
 {
  announce_next_takeover = 0;

  if (SyncRepConfig->syncrep_method == SYNC_REP_PRIORITY)
   ereport(LOG,
     (errmsg("standby \"%s\" is now a synchronous standby with priority %u",
       application_name, MyWalSnd->sync_standby_priority)));
  else
   ereport(LOG,
     (errmsg("standby \"%s\" is now a candidate for quorum synchronous standby",
       application_name)));
 }





 if (!got_recptr || !am_sync)
 {
  LWLockRelease(SyncRepLock);
  announce_next_takeover = !am_sync;
  return;
 }





 if (walsndctl->lsn[SYNC_REP_WAIT_WRITE] < writePtr)
 {
  walsndctl->lsn[SYNC_REP_WAIT_WRITE] = writePtr;
  numwrite = SyncRepWakeQueue(0, SYNC_REP_WAIT_WRITE);
 }
 if (walsndctl->lsn[SYNC_REP_WAIT_FLUSH] < flushPtr)
 {
  walsndctl->lsn[SYNC_REP_WAIT_FLUSH] = flushPtr;
  numflush = SyncRepWakeQueue(0, SYNC_REP_WAIT_FLUSH);
 }
 if (walsndctl->lsn[SYNC_REP_WAIT_APPLY] < applyPtr)
 {
  walsndctl->lsn[SYNC_REP_WAIT_APPLY] = applyPtr;
  numapply = SyncRepWakeQueue(0, SYNC_REP_WAIT_APPLY);
 }

 LWLockRelease(SyncRepLock);

 elog(DEBUG3, "released %d procs up to write %X/%X, %d procs up to flush %X/%X, %d procs up to apply %X/%X",
   numwrite, (uint32) (writePtr >> 32), (uint32) writePtr,
   numflush, (uint32) (flushPtr >> 32), (uint32) flushPtr,
   numapply, (uint32) (applyPtr >> 32), (uint32) applyPtr);
}
