
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_4__ {int redo; } ;
struct TYPE_5__ {int info_lck; TYPE_1__ lastCheckPoint; int lastCheckPointEndPtr; int lastCheckPointRecPtr; } ;
typedef TYPE_1__ CheckPoint ;


 int DEBUG2 ;
 int EndRecPtr ;
 int ReadRecPtr ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 TYPE_2__* XLogCtl ;
 scalar_t__ XLogHaveInvalidPages () ;
 int elog (int ,char*,int ,int ) ;
 int trace_recovery (int ) ;

__attribute__((used)) static void
RecoveryRestartPoint(const CheckPoint *checkPoint)
{







 if (XLogHaveInvalidPages())
 {
  elog(trace_recovery(DEBUG2),
    "could not record restart point at %X/%X because there "
    "are unresolved references to invalid pages",
    (uint32) (checkPoint->redo >> 32),
    (uint32) checkPoint->redo);
  return;
 }





 SpinLockAcquire(&XLogCtl->info_lck);
 XLogCtl->lastCheckPointRecPtr = ReadRecPtr;
 XLogCtl->lastCheckPointEndPtr = EndRecPtr;
 XLogCtl->lastCheckPoint = *checkPoint;
 SpinLockRelease(&XLogCtl->info_lck);
}
