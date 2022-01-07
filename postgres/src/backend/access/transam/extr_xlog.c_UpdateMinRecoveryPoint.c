
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32 ;
typedef int XLogRecPtr ;
typedef void* TimeLineID ;
struct TYPE_4__ {int minRecoveryPoint; void* minRecoveryPointTLI; } ;
struct TYPE_3__ {int replayEndRecPtr; int info_lck; void* replayEndTLI; } ;


 TYPE_2__* ControlFile ;
 int ControlFileLock ;
 int DEBUG2 ;
 scalar_t__ InRecovery ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 int UpdateControlFile () ;
 int WARNING ;
 TYPE_1__* XLogCtl ;
 scalar_t__ XLogRecPtrIsInvalid (int) ;
 int elog (int ,char*,int ,int ,int ,int ) ;
 int ereport (int ,int ) ;
 int errmsg (char*,int ,int ,void*) ;
 int minRecoveryPoint ;
 void* minRecoveryPointTLI ;
 int updateMinRecoveryPoint ;

__attribute__((used)) static void
UpdateMinRecoveryPoint(XLogRecPtr lsn, bool force)
{

 if (!updateMinRecoveryPoint || (!force && lsn <= minRecoveryPoint))
  return;
 if (XLogRecPtrIsInvalid(minRecoveryPoint) && InRecovery)
 {
  updateMinRecoveryPoint = 0;
  return;
 }

 LWLockAcquire(ControlFileLock, LW_EXCLUSIVE);


 minRecoveryPoint = ControlFile->minRecoveryPoint;
 minRecoveryPointTLI = ControlFile->minRecoveryPointTLI;

 if (XLogRecPtrIsInvalid(minRecoveryPoint))
  updateMinRecoveryPoint = 0;
 else if (force || minRecoveryPoint < lsn)
 {
  XLogRecPtr newMinRecoveryPoint;
  TimeLineID newMinRecoveryPointTLI;
  SpinLockAcquire(&XLogCtl->info_lck);
  newMinRecoveryPoint = XLogCtl->replayEndRecPtr;
  newMinRecoveryPointTLI = XLogCtl->replayEndTLI;
  SpinLockRelease(&XLogCtl->info_lck);

  if (!force && newMinRecoveryPoint < lsn)
   elog(WARNING,
     "xlog min recovery request %X/%X is past current point %X/%X",
     (uint32) (lsn >> 32), (uint32) lsn,
     (uint32) (newMinRecoveryPoint >> 32),
     (uint32) newMinRecoveryPoint);


  if (ControlFile->minRecoveryPoint < newMinRecoveryPoint)
  {
   ControlFile->minRecoveryPoint = newMinRecoveryPoint;
   ControlFile->minRecoveryPointTLI = newMinRecoveryPointTLI;
   UpdateControlFile();
   minRecoveryPoint = newMinRecoveryPoint;
   minRecoveryPointTLI = newMinRecoveryPointTLI;

   ereport(DEBUG2,
     (errmsg("updated min recovery point to %X/%X on timeline %u",
       (uint32) (minRecoveryPoint >> 32),
       (uint32) minRecoveryPoint,
       newMinRecoveryPointTLI)));
  }
 }
 LWLockRelease(ControlFileLock);
}
