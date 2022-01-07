
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int TransactionId ;
struct TYPE_4__ {scalar_t__ snapshot_type; scalar_t__ xcnt; scalar_t__ subxcnt; scalar_t__ takenDuringRecovery; int suboverflowed; } ;
typedef TYPE_1__* Snapshot ;
typedef int Size ;
typedef int SerializedSnapshotData ;


 int Assert (int) ;
 TYPE_1__* InvalidSnapshot ;
 scalar_t__ SNAPSHOT_MVCC ;
 int add_size (int,int ) ;
 int mul_size (scalar_t__,int) ;

Size
EstimateSnapshotSpace(Snapshot snap)
{
 Size size;

 Assert(snap != InvalidSnapshot);
 Assert(snap->snapshot_type == SNAPSHOT_MVCC);


 size = add_size(sizeof(SerializedSnapshotData),
     mul_size(snap->xcnt, sizeof(TransactionId)));
 if (snap->subxcnt > 0 &&
  (!snap->suboverflowed || snap->takenDuringRecovery))
  size = add_size(size,
      mul_size(snap->subxcnt, sizeof(TransactionId)));

 return size;
}
