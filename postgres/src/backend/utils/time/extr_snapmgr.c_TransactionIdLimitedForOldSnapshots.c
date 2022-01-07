
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int TransactionId ;
typedef scalar_t__ TimestampTz ;
struct TYPE_4__ {int xmin; } ;
struct TYPE_3__ {scalar_t__ next_map_update; scalar_t__ threshold_timestamp; int count_used; scalar_t__ head_timestamp; int head_offset; int * xid_by_minute; int mutex_threshold; int threshold_xid; int mutex_latest_xmin; int latest_xmin; } ;
typedef int Relation ;


 scalar_t__ AlignTimestampToMinuteBoundary (scalar_t__) ;
 scalar_t__ GetSnapshotCurrentTimestamp () ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_SHARED ;
 TYPE_2__* MyPgXact ;
 scalar_t__ NormalTransactionIdFollows (int ,int ) ;
 int OLD_SNAPSHOT_TIME_MAP_ENTRIES ;
 int OldSnapshotTimeMapLock ;
 scalar_t__ RelationAllowsEarlyPruning (int ) ;
 int SetOldSnapshotThresholdTimestamp (scalar_t__,int ) ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 scalar_t__ TransactionIdFollows (int ,int ) ;
 scalar_t__ TransactionIdIsNormal (int ) ;
 scalar_t__ TransactionIdPrecedes (int ,int ) ;
 scalar_t__ USECS_PER_MINUTE ;
 int USECS_PER_SEC ;
 TYPE_1__* oldSnapshotControl ;
 scalar_t__ old_snapshot_threshold ;

TransactionId
TransactionIdLimitedForOldSnapshots(TransactionId recentXmin,
         Relation relation)
{
 if (TransactionIdIsNormal(recentXmin)
  && old_snapshot_threshold >= 0
  && RelationAllowsEarlyPruning(relation))
 {
  TimestampTz ts = GetSnapshotCurrentTimestamp();
  TransactionId xlimit = recentXmin;
  TransactionId latest_xmin;
  TimestampTz update_ts;
  bool same_ts_as_threshold = 0;

  SpinLockAcquire(&oldSnapshotControl->mutex_latest_xmin);
  latest_xmin = oldSnapshotControl->latest_xmin;
  update_ts = oldSnapshotControl->next_map_update;
  SpinLockRelease(&oldSnapshotControl->mutex_latest_xmin);
  if (old_snapshot_threshold == 0)
  {
   if (TransactionIdPrecedes(latest_xmin, MyPgXact->xmin)
    && TransactionIdFollows(latest_xmin, xlimit))
    xlimit = latest_xmin;

   ts -= 5 * USECS_PER_SEC;
   SetOldSnapshotThresholdTimestamp(ts, xlimit);

   return xlimit;
  }

  ts = AlignTimestampToMinuteBoundary(ts)
   - (old_snapshot_threshold * USECS_PER_MINUTE);


  SpinLockAcquire(&oldSnapshotControl->mutex_threshold);
  if (ts == oldSnapshotControl->threshold_timestamp)
  {
   xlimit = oldSnapshotControl->threshold_xid;
   same_ts_as_threshold = 1;
  }
  SpinLockRelease(&oldSnapshotControl->mutex_threshold);

  if (!same_ts_as_threshold)
  {
   if (ts == update_ts)
   {
    xlimit = latest_xmin;
    if (NormalTransactionIdFollows(xlimit, recentXmin))
     SetOldSnapshotThresholdTimestamp(ts, xlimit);
   }
   else
   {
    LWLockAcquire(OldSnapshotTimeMapLock, LW_SHARED);

    if (oldSnapshotControl->count_used > 0
     && ts >= oldSnapshotControl->head_timestamp)
    {
     int offset;

     offset = ((ts - oldSnapshotControl->head_timestamp)
         / USECS_PER_MINUTE);
     if (offset > oldSnapshotControl->count_used - 1)
      offset = oldSnapshotControl->count_used - 1;
     offset = (oldSnapshotControl->head_offset + offset)
      % OLD_SNAPSHOT_TIME_MAP_ENTRIES;
     xlimit = oldSnapshotControl->xid_by_minute[offset];

     if (NormalTransactionIdFollows(xlimit, recentXmin))
      SetOldSnapshotThresholdTimestamp(ts, xlimit);
    }

    LWLockRelease(OldSnapshotTimeMapLock);
   }
  }
  if (TransactionIdIsNormal(latest_xmin)
   && TransactionIdPrecedes(latest_xmin, xlimit))
   xlimit = latest_xmin;

  if (NormalTransactionIdFollows(xlimit, recentXmin))
   return xlimit;
 }

 return recentXmin;
}
