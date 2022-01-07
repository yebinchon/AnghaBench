
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {int twophase_xid; } ;
typedef TYPE_1__ xl_xact_parsed_commit ;
struct TYPE_16__ {int twophase_xid; } ;
typedef TYPE_2__ xl_xact_parsed_abort ;
typedef int xl_xact_commit ;
struct TYPE_17__ {int xsub; int nsubxacts; int xtop; } ;
typedef TYPE_3__ xl_xact_assignment ;
typedef int xl_xact_abort ;
typedef scalar_t__ uint8 ;
struct TYPE_18__ {int EndRecPtr; int ReadRecPtr; } ;
typedef TYPE_4__ XLogReaderState ;


 int Assert (int) ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int PANIC ;
 int ParseAbortRecord (scalar_t__,int *,TYPE_2__*) ;
 int ParseCommitRecord (scalar_t__,int *,TYPE_1__*) ;
 int PrepareRedoAdd (scalar_t__,int ,int ,int ) ;
 int PrepareRedoRemove (int ,int) ;
 int ProcArrayApplyXidAssignment (int ,int ,int ) ;
 scalar_t__ STANDBY_INITIALIZED ;
 int TwoPhaseStateLock ;
 scalar_t__ XLOG_XACT_ABORT ;
 scalar_t__ XLOG_XACT_ABORT_PREPARED ;
 scalar_t__ XLOG_XACT_ASSIGNMENT ;
 scalar_t__ XLOG_XACT_COMMIT ;
 scalar_t__ XLOG_XACT_COMMIT_PREPARED ;
 scalar_t__ XLOG_XACT_OPMASK ;
 scalar_t__ XLOG_XACT_PREPARE ;
 scalar_t__ XLogRecGetData (TYPE_4__*) ;
 scalar_t__ XLogRecGetInfo (TYPE_4__*) ;
 int XLogRecGetOrigin (TYPE_4__*) ;
 int XLogRecGetXid (TYPE_4__*) ;
 int XLogRecHasAnyBlockRefs (TYPE_4__*) ;
 int elog (int ,char*,scalar_t__) ;
 scalar_t__ standbyState ;
 int xact_redo_abort (TYPE_2__*,int ) ;
 int xact_redo_commit (TYPE_1__*,int ,int ,int ) ;

void
xact_redo(XLogReaderState *record)
{
 uint8 info = XLogRecGetInfo(record) & XLOG_XACT_OPMASK;


 Assert(!XLogRecHasAnyBlockRefs(record));

 if (info == XLOG_XACT_COMMIT)
 {
  xl_xact_commit *xlrec = (xl_xact_commit *) XLogRecGetData(record);
  xl_xact_parsed_commit parsed;

  ParseCommitRecord(XLogRecGetInfo(record), xlrec, &parsed);
  xact_redo_commit(&parsed, XLogRecGetXid(record),
       record->EndRecPtr, XLogRecGetOrigin(record));
 }
 else if (info == XLOG_XACT_COMMIT_PREPARED)
 {
  xl_xact_commit *xlrec = (xl_xact_commit *) XLogRecGetData(record);
  xl_xact_parsed_commit parsed;

  ParseCommitRecord(XLogRecGetInfo(record), xlrec, &parsed);
  xact_redo_commit(&parsed, parsed.twophase_xid,
       record->EndRecPtr, XLogRecGetOrigin(record));


  LWLockAcquire(TwoPhaseStateLock, LW_EXCLUSIVE);
  PrepareRedoRemove(parsed.twophase_xid, 0);
  LWLockRelease(TwoPhaseStateLock);
 }
 else if (info == XLOG_XACT_ABORT)
 {
  xl_xact_abort *xlrec = (xl_xact_abort *) XLogRecGetData(record);
  xl_xact_parsed_abort parsed;

  ParseAbortRecord(XLogRecGetInfo(record), xlrec, &parsed);
  xact_redo_abort(&parsed, XLogRecGetXid(record));
 }
 else if (info == XLOG_XACT_ABORT_PREPARED)
 {
  xl_xact_abort *xlrec = (xl_xact_abort *) XLogRecGetData(record);
  xl_xact_parsed_abort parsed;

  ParseAbortRecord(XLogRecGetInfo(record), xlrec, &parsed);
  xact_redo_abort(&parsed, parsed.twophase_xid);


  LWLockAcquire(TwoPhaseStateLock, LW_EXCLUSIVE);
  PrepareRedoRemove(parsed.twophase_xid, 0);
  LWLockRelease(TwoPhaseStateLock);
 }
 else if (info == XLOG_XACT_PREPARE)
 {




  LWLockAcquire(TwoPhaseStateLock, LW_EXCLUSIVE);
  PrepareRedoAdd(XLogRecGetData(record),
        record->ReadRecPtr,
        record->EndRecPtr,
        XLogRecGetOrigin(record));
  LWLockRelease(TwoPhaseStateLock);
 }
 else if (info == XLOG_XACT_ASSIGNMENT)
 {
  xl_xact_assignment *xlrec = (xl_xact_assignment *) XLogRecGetData(record);

  if (standbyState >= STANDBY_INITIALIZED)
   ProcArrayApplyXidAssignment(xlrec->xtop,
          xlrec->nsubxacts, xlrec->xsub);
 }
 else
  elog(PANIC, "xact_redo: unknown op code %u", info);
}
