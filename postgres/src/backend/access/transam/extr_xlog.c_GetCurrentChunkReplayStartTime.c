
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TimestampTz ;
struct TYPE_2__ {int info_lck; int currentChunkStartTime; } ;


 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 TYPE_1__* XLogCtl ;

TimestampTz
GetCurrentChunkReplayStartTime(void)
{
 TimestampTz xtime;

 SpinLockAcquire(&XLogCtl->info_lck);
 xtime = XLogCtl->currentChunkStartTime;
 SpinLockRelease(&XLogCtl->info_lck);

 return xtime;
}
