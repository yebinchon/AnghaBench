
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32 ;
typedef scalar_t__ XLogRecPtr ;
struct TYPE_4__ {scalar_t__ syncRepState; scalar_t__ waitLSN; int syncRepLinks; } ;
struct TYPE_3__ {scalar_t__* lsn; int sync_standbys_defined; } ;


 int Assert (int) ;
 int DestNone ;
 int ERRCODE_ADMIN_SHUTDOWN ;
 scalar_t__ InterruptHoldoffCount ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int Min (int,int ) ;
 int MyLatch ;
 TYPE_2__* MyProc ;
 int ProcDiePending ;
 int QueryCancelPending ;
 int ResetLatch (int ) ;
 int SHMQueueIsDetached (int *) ;
 scalar_t__ SYNC_REP_NOT_WAITING ;
 scalar_t__ SYNC_REP_WAITING ;
 scalar_t__ SYNC_REP_WAIT_COMPLETE ;
 int SYNC_REP_WAIT_FLUSH ;
 int SyncRepCancelWait () ;
 int SyncRepLock ;
 int SyncRepQueueInsert (int) ;
 int SyncRepQueueIsOrderedByLSN (int) ;
 int SyncRepRequested () ;
 int SyncRepWaitMode ;
 int WAIT_EVENT_SYNC_REP ;
 int WARNING ;
 int WL_LATCH_SET ;
 int WL_POSTMASTER_DEATH ;
 int WaitLatch (int ,int,int,int ) ;
 TYPE_1__* WalSndCtl ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*) ;
 int errmsg (char*) ;
 char* get_ps_display (int*) ;
 int memcpy (char*,char const*,int) ;
 scalar_t__ palloc (int) ;
 int pfree (char*) ;
 int pg_read_barrier () ;
 int set_ps_display (char*,int) ;
 int sprintf (char*,char*,int,int) ;
 scalar_t__ update_process_title ;
 int whereToSendOutput ;

void
SyncRepWaitForLSN(XLogRecPtr lsn, bool commit)
{
 char *new_status = ((void*)0);
 const char *old_status;
 int mode;






 Assert(InterruptHoldoffCount > 0);


 if (commit)
  mode = SyncRepWaitMode;
 else
  mode = Min(SyncRepWaitMode, SYNC_REP_WAIT_FLUSH);




 if (!SyncRepRequested())
  return;

 Assert(SHMQueueIsDetached(&(MyProc->syncRepLinks)));
 Assert(WalSndCtl != ((void*)0));

 LWLockAcquire(SyncRepLock, LW_EXCLUSIVE);
 Assert(MyProc->syncRepState == SYNC_REP_NOT_WAITING);
 if (!WalSndCtl->sync_standbys_defined ||
  lsn <= WalSndCtl->lsn[mode])
 {
  LWLockRelease(SyncRepLock);
  return;
 }





 MyProc->waitLSN = lsn;
 MyProc->syncRepState = SYNC_REP_WAITING;
 SyncRepQueueInsert(mode);
 Assert(SyncRepQueueIsOrderedByLSN(mode));
 LWLockRelease(SyncRepLock);


 if (update_process_title)
 {
  int len;

  old_status = get_ps_display(&len);
  new_status = (char *) palloc(len + 32 + 1);
  memcpy(new_status, old_status, len);
  sprintf(new_status + len, " waiting for %X/%X",
    (uint32) (lsn >> 32), (uint32) lsn);
  set_ps_display(new_status, 0);
  new_status[len] = '\0';
 }







 for (;;)
 {
  int rc;


  ResetLatch(MyLatch);
  if (MyProc->syncRepState == SYNC_REP_WAIT_COMPLETE)
   break;
  if (ProcDiePending)
  {
   ereport(WARNING,
     (errcode(ERRCODE_ADMIN_SHUTDOWN),
      errmsg("canceling the wait for synchronous replication and terminating connection due to administrator command"),
      errdetail("The transaction has already committed locally, but might not have been replicated to the standby.")));
   whereToSendOutput = DestNone;
   SyncRepCancelWait();
   break;
  }







  if (QueryCancelPending)
  {
   QueryCancelPending = 0;
   ereport(WARNING,
     (errmsg("canceling wait for synchronous replication due to user request"),
      errdetail("The transaction has already committed locally, but might not have been replicated to the standby.")));
   SyncRepCancelWait();
   break;
  }





  rc = WaitLatch(MyLatch, WL_LATCH_SET | WL_POSTMASTER_DEATH, -1,
        WAIT_EVENT_SYNC_REP);





  if (rc & WL_POSTMASTER_DEATH)
  {
   ProcDiePending = 1;
   whereToSendOutput = DestNone;
   SyncRepCancelWait();
   break;
  }
 }
 pg_read_barrier();
 Assert(SHMQueueIsDetached(&(MyProc->syncRepLinks)));
 MyProc->syncRepState = SYNC_REP_NOT_WAITING;
 MyProc->waitLSN = 0;

 if (new_status)
 {

  set_ps_display(new_status, 0);
  pfree(new_status);
 }
}
