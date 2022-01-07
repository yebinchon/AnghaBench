
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TimestampTz ;
struct TYPE_2__ {int mutex_threshold; int threshold_timestamp; } ;


 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 TYPE_1__* oldSnapshotControl ;

TimestampTz
GetOldSnapshotThresholdTimestamp(void)
{
 TimestampTz threshold_timestamp;

 SpinLockAcquire(&oldSnapshotControl->mutex_threshold);
 threshold_timestamp = oldSnapshotControl->threshold_timestamp;
 SpinLockRelease(&oldSnapshotControl->mutex_threshold);

 return threshold_timestamp;
}
