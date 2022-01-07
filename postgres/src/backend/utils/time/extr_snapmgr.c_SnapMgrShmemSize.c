
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TransactionId ;
typedef int Size ;


 int OLD_SNAPSHOT_TIME_MAP_ENTRIES ;
 int OldSnapshotControlData ;
 int add_size (int ,int ) ;
 int mul_size (int,int ) ;
 int offsetof (int ,int ) ;
 scalar_t__ old_snapshot_threshold ;
 int xid_by_minute ;

Size
SnapMgrShmemSize(void)
{
 Size size;

 size = offsetof(OldSnapshotControlData, xid_by_minute);
 if (old_snapshot_threshold > 0)
  size = add_size(size, mul_size(sizeof(TransactionId),
            OLD_SNAPSHOT_TIME_MAP_ENTRIES));

 return size;
}
