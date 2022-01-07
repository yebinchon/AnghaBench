
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int XLogRecPtr ;
typedef int TimeLineID ;
struct TYPE_2__ {int info_lck; int lastReplayedTLI; int lastReplayedEndRecPtr; } ;


 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 TYPE_1__* XLogCtl ;

XLogRecPtr
GetXLogReplayRecPtr(TimeLineID *replayTLI)
{
 XLogRecPtr recptr;
 TimeLineID tli;

 SpinLockAcquire(&XLogCtl->info_lck);
 recptr = XLogCtl->lastReplayedEndRecPtr;
 tli = XLogCtl->lastReplayedTLI;
 SpinLockRelease(&XLogCtl->info_lck);

 if (replayTLI)
  *replayTLI = tli;
 return recptr;
}
