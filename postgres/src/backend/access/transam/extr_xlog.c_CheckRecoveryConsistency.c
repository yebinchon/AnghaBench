
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32 ;
typedef int XLogRecPtr ;
struct TYPE_4__ {int backupEndPoint; int minRecoveryPoint; int backupStartPoint; int backupEndRequired; } ;
struct TYPE_3__ {int lastReplayedEndRecPtr; int SharedHotStandbyActive; int info_lck; } ;


 int Assert (int ) ;
 TYPE_2__* ControlFile ;
 int ControlFileLock ;
 int DEBUG1 ;
 int InArchiveRecovery ;
 void* InvalidXLogRecPtr ;
 scalar_t__ IsUnderPostmaster ;
 int LOG ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int LocalHotStandbyActive ;
 int PMSIGNAL_BEGIN_HOT_STANDBY ;
 scalar_t__ STANDBY_SNAPSHOT_READY ;
 int SendPostmasterSignal (int ) ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 int UpdateControlFile () ;
 int XLogCheckInvalidPages () ;
 TYPE_1__* XLogCtl ;
 scalar_t__ XLogRecPtrIsInvalid (int) ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errmsg (char*,int ,int ) ;
 int minRecoveryPoint ;
 int reachedConsistency ;
 scalar_t__ standbyState ;

__attribute__((used)) static void
CheckRecoveryConsistency(void)
{
 XLogRecPtr lastReplayedEndRecPtr;





 if (XLogRecPtrIsInvalid(minRecoveryPoint))
  return;

 Assert(InArchiveRecovery);





 lastReplayedEndRecPtr = XLogCtl->lastReplayedEndRecPtr;




 if (!XLogRecPtrIsInvalid(ControlFile->backupEndPoint) &&
  ControlFile->backupEndPoint <= lastReplayedEndRecPtr)
 {







  elog(DEBUG1, "end of backup reached");

  LWLockAcquire(ControlFileLock, LW_EXCLUSIVE);

  if (ControlFile->minRecoveryPoint < lastReplayedEndRecPtr)
   ControlFile->minRecoveryPoint = lastReplayedEndRecPtr;

  ControlFile->backupStartPoint = InvalidXLogRecPtr;
  ControlFile->backupEndPoint = InvalidXLogRecPtr;
  ControlFile->backupEndRequired = 0;
  UpdateControlFile();

  LWLockRelease(ControlFileLock);
 }
 if (!reachedConsistency && !ControlFile->backupEndRequired &&
  minRecoveryPoint <= lastReplayedEndRecPtr &&
  XLogRecPtrIsInvalid(ControlFile->backupStartPoint))
 {




  XLogCheckInvalidPages();

  reachedConsistency = 1;
  ereport(LOG,
    (errmsg("consistent recovery state reached at %X/%X",
      (uint32) (lastReplayedEndRecPtr >> 32),
      (uint32) lastReplayedEndRecPtr)));
 }






 if (standbyState == STANDBY_SNAPSHOT_READY &&
  !LocalHotStandbyActive &&
  reachedConsistency &&
  IsUnderPostmaster)
 {
  SpinLockAcquire(&XLogCtl->info_lck);
  XLogCtl->SharedHotStandbyActive = 1;
  SpinLockRelease(&XLogCtl->info_lck);

  LocalHotStandbyActive = 1;

  SendPostmasterSignal(PMSIGNAL_BEGIN_HOT_STANDBY);
 }
}
