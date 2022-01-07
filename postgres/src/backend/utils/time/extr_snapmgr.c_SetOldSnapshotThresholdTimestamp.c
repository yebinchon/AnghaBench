
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TransactionId ;
typedef int TimestampTz ;
struct TYPE_2__ {int mutex_threshold; int threshold_xid; int threshold_timestamp; } ;


 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 TYPE_1__* oldSnapshotControl ;

__attribute__((used)) static void
SetOldSnapshotThresholdTimestamp(TimestampTz ts, TransactionId xlimit)
{
 SpinLockAcquire(&oldSnapshotControl->mutex_threshold);
 oldSnapshotControl->threshold_timestamp = ts;
 oldSnapshotControl->threshold_xid = xlimit;
 SpinLockRelease(&oldSnapshotControl->mutex_threshold);
}
