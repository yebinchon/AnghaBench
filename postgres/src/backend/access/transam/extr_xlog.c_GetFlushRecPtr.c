
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int XLogRecPtr ;
struct TYPE_4__ {int Flush; } ;
struct TYPE_3__ {int info_lck; TYPE_2__ LogwrtResult; } ;


 TYPE_2__ LogwrtResult ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 TYPE_1__* XLogCtl ;

XLogRecPtr
GetFlushRecPtr(void)
{
 SpinLockAcquire(&XLogCtl->info_lck);
 LogwrtResult = XLogCtl->LogwrtResult;
 SpinLockRelease(&XLogCtl->info_lck);

 return LogwrtResult.Flush;
}
