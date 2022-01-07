
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ XLogRecPtr ;
struct TYPE_6__ {scalar_t__ minRecoveryPoint; int minRecoveryPointTLI; } ;
struct TYPE_5__ {scalar_t__ Flush; } ;
struct TYPE_4__ {int info_lck; TYPE_2__ LogwrtResult; } ;


 TYPE_3__* ControlFile ;
 int ControlFileLock ;
 scalar_t__ InRecovery ;
 int LWLockConditionalAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_SHARED ;
 TYPE_2__ LogwrtResult ;
 scalar_t__ RecoveryInProgress () ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 TYPE_1__* XLogCtl ;
 scalar_t__ XLogRecPtrIsInvalid (scalar_t__) ;
 scalar_t__ minRecoveryPoint ;
 int minRecoveryPointTLI ;
 int updateMinRecoveryPoint ;

bool
XLogNeedsFlush(XLogRecPtr record)
{





 if (RecoveryInProgress())
 {
  if (XLogRecPtrIsInvalid(minRecoveryPoint) && InRecovery)
   updateMinRecoveryPoint = 0;


  if (record <= minRecoveryPoint || !updateMinRecoveryPoint)
   return 0;





  if (!LWLockConditionalAcquire(ControlFileLock, LW_SHARED))
   return 1;
  minRecoveryPoint = ControlFile->minRecoveryPoint;
  minRecoveryPointTLI = ControlFile->minRecoveryPointTLI;
  LWLockRelease(ControlFileLock);






  if (XLogRecPtrIsInvalid(minRecoveryPoint))
   updateMinRecoveryPoint = 0;


  if (record <= minRecoveryPoint || !updateMinRecoveryPoint)
   return 0;
  else
   return 1;
 }


 if (record <= LogwrtResult.Flush)
  return 0;


 SpinLockAcquire(&XLogCtl->info_lck);
 LogwrtResult = XLogCtl->LogwrtResult;
 SpinLockRelease(&XLogCtl->info_lck);


 if (record <= LogwrtResult.Flush)
  return 0;

 return 1;
}
