
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int nlocks; TYPE_1__* locks; } ;
typedef TYPE_2__ xl_standby_locks ;
struct TYPE_9__ {int xids; int oldestRunningXid; int latestCompletedXid; int nextXid; int subxid_overflow; int subxcnt; int xcnt; } ;
typedef TYPE_3__ xl_running_xacts ;
struct TYPE_10__ {int tsId; int dbId; int relcacheInitFileInval; int nmsgs; int msgs; } ;
typedef TYPE_4__ xl_invalidations ;
typedef scalar_t__ uint8 ;
typedef int XLogReaderState ;
struct TYPE_11__ {int xids; int oldestRunningXid; int latestCompletedXid; int nextXid; int subxid_overflow; int subxcnt; int xcnt; } ;
struct TYPE_7__ {int relOid; int dbOid; int xid; } ;
typedef TYPE_5__ RunningTransactionsData ;


 int Assert (int) ;
 int PANIC ;
 int ProcArrayApplyRecoveryInfo (TYPE_5__*) ;
 int ProcessCommittedInvalidationMessages (int ,int ,int ,int ,int ) ;
 scalar_t__ STANDBY_DISABLED ;
 int StandbyAcquireAccessExclusiveLock (int ,int ,int ) ;
 scalar_t__ XLOG_INVALIDATIONS ;
 scalar_t__ XLOG_RUNNING_XACTS ;
 scalar_t__ XLOG_STANDBY_LOCK ;
 scalar_t__ XLR_INFO_MASK ;
 scalar_t__ XLogRecGetData (int *) ;
 scalar_t__ XLogRecGetInfo (int *) ;
 int XLogRecHasAnyBlockRefs (int *) ;
 int elog (int ,char*,scalar_t__) ;
 scalar_t__ standbyState ;

void
standby_redo(XLogReaderState *record)
{
 uint8 info = XLogRecGetInfo(record) & ~XLR_INFO_MASK;


 Assert(!XLogRecHasAnyBlockRefs(record));


 if (standbyState == STANDBY_DISABLED)
  return;

 if (info == XLOG_STANDBY_LOCK)
 {
  xl_standby_locks *xlrec = (xl_standby_locks *) XLogRecGetData(record);
  int i;

  for (i = 0; i < xlrec->nlocks; i++)
   StandbyAcquireAccessExclusiveLock(xlrec->locks[i].xid,
             xlrec->locks[i].dbOid,
             xlrec->locks[i].relOid);
 }
 else if (info == XLOG_RUNNING_XACTS)
 {
  xl_running_xacts *xlrec = (xl_running_xacts *) XLogRecGetData(record);
  RunningTransactionsData running;

  running.xcnt = xlrec->xcnt;
  running.subxcnt = xlrec->subxcnt;
  running.subxid_overflow = xlrec->subxid_overflow;
  running.nextXid = xlrec->nextXid;
  running.latestCompletedXid = xlrec->latestCompletedXid;
  running.oldestRunningXid = xlrec->oldestRunningXid;
  running.xids = xlrec->xids;

  ProcArrayApplyRecoveryInfo(&running);
 }
 else if (info == XLOG_INVALIDATIONS)
 {
  xl_invalidations *xlrec = (xl_invalidations *) XLogRecGetData(record);

  ProcessCommittedInvalidationMessages(xlrec->msgs,
            xlrec->nmsgs,
            xlrec->relcacheInitFileInval,
            xlrec->dbId,
            xlrec->tsId);
 }
 else
  elog(PANIC, "standby_redo: unknown op code %u", info);
}
