
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int XLogSegNo ;
struct TYPE_2__ {int info_lck; int lastRemovedSegNo; } ;


 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 TYPE_1__* XLogCtl ;

XLogSegNo
XLogGetLastRemovedSegno(void)
{
 XLogSegNo lastRemovedSegNo;

 SpinLockAcquire(&XLogCtl->info_lck);
 lastRemovedSegNo = XLogCtl->lastRemovedSegNo;
 SpinLockRelease(&XLogCtl->info_lck);

 return lastRemovedSegNo;
}
