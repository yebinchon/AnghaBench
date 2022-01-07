
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* TransactionId ;
typedef scalar_t__ TimestampTz ;
struct TYPE_2__ {scalar_t__ next_map_update; scalar_t__ head_offset; int head_timestamp; scalar_t__ count_used; void** xid_by_minute; int mutex_latest_xmin; void* latest_xmin; } ;


 scalar_t__ AlignTimestampToMinuteBoundary (scalar_t__) ;
 int Assert (int) ;
 int DEBUG1 ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 scalar_t__ OLD_SNAPSHOT_TIME_MAP_ENTRIES ;
 int OldSnapshotTimeMapLock ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 scalar_t__ TransactionIdFollows (void*,void*) ;
 int TransactionIdIsNormal (void*) ;
 scalar_t__ TransactionIdPrecedes (void*,void*) ;
 int USECS_PER_MINUTE ;
 int elog (int ,char*,long) ;
 TYPE_1__* oldSnapshotControl ;
 scalar_t__ old_snapshot_threshold ;

void
MaintainOldSnapshotTimeMapping(TimestampTz whenTaken, TransactionId xmin)
{
 TimestampTz ts;
 TransactionId latest_xmin;
 TimestampTz update_ts;
 bool map_update_required = 0;


 Assert(old_snapshot_threshold >= 0);

 ts = AlignTimestampToMinuteBoundary(whenTaken);





 SpinLockAcquire(&oldSnapshotControl->mutex_latest_xmin);
 latest_xmin = oldSnapshotControl->latest_xmin;
 update_ts = oldSnapshotControl->next_map_update;
 if (ts > update_ts)
 {
  oldSnapshotControl->next_map_update = ts;
  map_update_required = 1;
 }
 if (TransactionIdFollows(xmin, latest_xmin))
  oldSnapshotControl->latest_xmin = xmin;
 SpinLockRelease(&oldSnapshotControl->mutex_latest_xmin);


 if (!map_update_required)
  return;


 if (old_snapshot_threshold == 0)
  return;







 if (whenTaken < 0)
 {
  elog(DEBUG1,
    "MaintainOldSnapshotTimeMapping called with negative whenTaken = %ld",
    (long) whenTaken);
  return;
 }
 if (!TransactionIdIsNormal(xmin))
 {
  elog(DEBUG1,
    "MaintainOldSnapshotTimeMapping called with xmin = %lu",
    (unsigned long) xmin);
  return;
 }

 LWLockAcquire(OldSnapshotTimeMapLock, LW_EXCLUSIVE);

 Assert(oldSnapshotControl->head_offset >= 0);
 Assert(oldSnapshotControl->head_offset < OLD_SNAPSHOT_TIME_MAP_ENTRIES);
 Assert((oldSnapshotControl->head_timestamp % USECS_PER_MINUTE) == 0);
 Assert(oldSnapshotControl->count_used >= 0);
 Assert(oldSnapshotControl->count_used <= OLD_SNAPSHOT_TIME_MAP_ENTRIES);

 if (oldSnapshotControl->count_used == 0)
 {

  oldSnapshotControl->head_offset = 0;
  oldSnapshotControl->head_timestamp = ts;
  oldSnapshotControl->count_used = 1;
  oldSnapshotControl->xid_by_minute[0] = xmin;
 }
 else if (ts < oldSnapshotControl->head_timestamp)
 {

  LWLockRelease(OldSnapshotTimeMapLock);
  elog(DEBUG1,
    "MaintainOldSnapshotTimeMapping called with old whenTaken = %ld",
    (long) whenTaken);
  return;
 }
 else if (ts <= (oldSnapshotControl->head_timestamp +
     ((oldSnapshotControl->count_used - 1)
      * USECS_PER_MINUTE)))
 {

  int bucket = (oldSnapshotControl->head_offset
         + ((ts - oldSnapshotControl->head_timestamp)
         / USECS_PER_MINUTE))
  % OLD_SNAPSHOT_TIME_MAP_ENTRIES;

  if (TransactionIdPrecedes(oldSnapshotControl->xid_by_minute[bucket], xmin))
   oldSnapshotControl->xid_by_minute[bucket] = xmin;
 }
 else
 {

  int advance = ((ts - oldSnapshotControl->head_timestamp)
          / USECS_PER_MINUTE);

  oldSnapshotControl->head_timestamp = ts;

  if (advance >= OLD_SNAPSHOT_TIME_MAP_ENTRIES)
  {

   oldSnapshotControl->head_offset = 0;
   oldSnapshotControl->count_used = 1;
   oldSnapshotControl->xid_by_minute[0] = xmin;
  }
  else
  {

   int i;

   for (i = 0; i < advance; i++)
   {
    if (oldSnapshotControl->count_used == OLD_SNAPSHOT_TIME_MAP_ENTRIES)
    {

     int old_head = oldSnapshotControl->head_offset;

     if (old_head == (OLD_SNAPSHOT_TIME_MAP_ENTRIES - 1))
      oldSnapshotControl->head_offset = 0;
     else
      oldSnapshotControl->head_offset = old_head + 1;
     oldSnapshotControl->xid_by_minute[old_head] = xmin;
    }
    else
    {

     int new_tail = (oldSnapshotControl->head_offset
           + oldSnapshotControl->count_used)
     % OLD_SNAPSHOT_TIME_MAP_ENTRIES;

     oldSnapshotControl->count_used++;
     oldSnapshotControl->xid_by_minute[new_tail] = xmin;
    }
   }
  }
 }

 LWLockRelease(OldSnapshotTimeMapLock);
}
