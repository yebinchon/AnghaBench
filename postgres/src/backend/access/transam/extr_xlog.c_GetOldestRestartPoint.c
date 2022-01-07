
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int XLogRecPtr ;
typedef int TimeLineID ;
struct TYPE_3__ {int ThisTimeLineID; int redo; } ;
struct TYPE_4__ {TYPE_1__ checkPointCopy; } ;


 TYPE_2__* ControlFile ;
 int ControlFileLock ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_SHARED ;

void
GetOldestRestartPoint(XLogRecPtr *oldrecptr, TimeLineID *oldtli)
{
 LWLockAcquire(ControlFileLock, LW_SHARED);
 *oldrecptr = ControlFile->checkPointCopy.redo;
 *oldtli = ControlFile->checkPointCopy.ThisTimeLineID;
 LWLockRelease(ControlFileLock);
}
