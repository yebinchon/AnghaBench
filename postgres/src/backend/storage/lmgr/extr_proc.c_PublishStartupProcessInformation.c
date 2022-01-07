
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int startupProcPid; int startupProc; } ;


 int MyProc ;
 int MyProcPid ;
 TYPE_1__* ProcGlobal ;
 int ProcStructLock ;
 int SpinLockAcquire (int ) ;
 int SpinLockRelease (int ) ;

void
PublishStartupProcessInformation(void)
{
 SpinLockAcquire(ProcStructLock);

 ProcGlobal->startupProc = MyProc;
 ProcGlobal->startupProcPid = MyProcPid;

 SpinLockRelease(ProcStructLock);
}
