
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ TimestampTz ;
struct TYPE_2__ {scalar_t__ current_timestamp; int mutex_current; } ;


 scalar_t__ GetCurrentTimestamp () ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 TYPE_1__* oldSnapshotControl ;

TimestampTz
GetSnapshotCurrentTimestamp(void)
{
 TimestampTz now = GetCurrentTimestamp();




 SpinLockAcquire(&oldSnapshotControl->mutex_current);
 if (now <= oldSnapshotControl->current_timestamp)
  now = oldSnapshotControl->current_timestamp;
 else
  oldSnapshotControl->current_timestamp = now;
 SpinLockRelease(&oldSnapshotControl->mutex_current);

 return now;
}
