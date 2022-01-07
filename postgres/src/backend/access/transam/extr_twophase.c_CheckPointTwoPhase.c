
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ XLogRecPtr ;
struct TYPE_4__ {int numPrepXacts; TYPE_1__** prepXacts; } ;
struct TYPE_3__ {int ondisk; scalar_t__ prepare_end_lsn; void* prepare_start_lsn; int xid; scalar_t__ inredo; scalar_t__ valid; } ;
typedef TYPE_1__* GlobalTransaction ;


 void* InvalidXLogRecPtr ;
 int LOG ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_SHARED ;
 int RecreateTwoPhaseFile (int ,char*,int) ;
 int TRACE_POSTGRESQL_TWOPHASE_CHECKPOINT_DONE () ;
 int TRACE_POSTGRESQL_TWOPHASE_CHECKPOINT_START () ;
 int TWOPHASE_DIR ;
 TYPE_2__* TwoPhaseState ;
 int TwoPhaseStateLock ;
 int XlogReadTwoPhaseData (void*,char**,int*) ;
 int ereport (int ,int ) ;
 int errmsg_plural (char*,char*,int,int) ;
 int fsync_fname (int ,int) ;
 scalar_t__ log_checkpoints ;
 scalar_t__ max_prepared_xacts ;
 int pfree (char*) ;

void
CheckPointTwoPhase(XLogRecPtr redo_horizon)
{
 int i;
 int serialized_xacts = 0;

 if (max_prepared_xacts <= 0)
  return;

 TRACE_POSTGRESQL_TWOPHASE_CHECKPOINT_START();
 LWLockAcquire(TwoPhaseStateLock, LW_SHARED);
 for (i = 0; i < TwoPhaseState->numPrepXacts; i++)
 {




  GlobalTransaction gxact = TwoPhaseState->prepXacts[i];

  if ((gxact->valid || gxact->inredo) &&
   !gxact->ondisk &&
   gxact->prepare_end_lsn <= redo_horizon)
  {
   char *buf;
   int len;

   XlogReadTwoPhaseData(gxact->prepare_start_lsn, &buf, &len);
   RecreateTwoPhaseFile(gxact->xid, buf, len);
   gxact->ondisk = 1;
   gxact->prepare_start_lsn = InvalidXLogRecPtr;
   gxact->prepare_end_lsn = InvalidXLogRecPtr;
   pfree(buf);
   serialized_xacts++;
  }
 }
 LWLockRelease(TwoPhaseStateLock);







 fsync_fname(TWOPHASE_DIR, 1);

 TRACE_POSTGRESQL_TWOPHASE_CHECKPOINT_DONE();

 if (log_checkpoints && serialized_xacts > 0)
  ereport(LOG,
    (errmsg_plural("%u two-phase state file was written "
          "for a long-running prepared transaction",
          "%u two-phase state files were written "
          "for long-running prepared transactions",
          serialized_xacts,
          serialized_xacts)));
}
