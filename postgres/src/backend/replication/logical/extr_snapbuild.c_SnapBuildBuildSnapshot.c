
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int TransactionId ;
struct TYPE_7__ {int xcnt; int xip; } ;
struct TYPE_9__ {scalar_t__ state; TYPE_1__ committed; int xmax; int xmin; int context; } ;
struct TYPE_8__ {int xcnt; int suboverflowed; int takenDuringRecovery; int copied; scalar_t__ regd_count; scalar_t__ active_count; int curcid; int * subxip; scalar_t__ subxcnt; int * xip; int xmax; int xmin; int snapshot_type; } ;
typedef int SnapshotData ;
typedef TYPE_2__* Snapshot ;
typedef TYPE_3__ SnapBuild ;
typedef int Size ;


 int Assert (int) ;
 int FirstCommandId ;
 TYPE_2__* MemoryContextAllocZero (int ,int) ;
 scalar_t__ SNAPBUILD_FULL_SNAPSHOT ;
 int SNAPSHOT_HISTORIC_MVCC ;
 int TransactionIdIsNormal (int ) ;
 int memcpy (int *,int ,int) ;
 int qsort (int *,int,int,int ) ;
 int xidComparator ;

__attribute__((used)) static Snapshot
SnapBuildBuildSnapshot(SnapBuild *builder)
{
 Snapshot snapshot;
 Size ssize;

 Assert(builder->state >= SNAPBUILD_FULL_SNAPSHOT);

 ssize = sizeof(SnapshotData)
  + sizeof(TransactionId) * builder->committed.xcnt
  + sizeof(TransactionId) * 1 ;

 snapshot = MemoryContextAllocZero(builder->context, ssize);

 snapshot->snapshot_type = SNAPSHOT_HISTORIC_MVCC;
 Assert(TransactionIdIsNormal(builder->xmin));
 Assert(TransactionIdIsNormal(builder->xmax));

 snapshot->xmin = builder->xmin;
 snapshot->xmax = builder->xmax;


 snapshot->xip =
  (TransactionId *) ((char *) snapshot + sizeof(SnapshotData));
 snapshot->xcnt = builder->committed.xcnt;
 memcpy(snapshot->xip,
     builder->committed.xip,
     builder->committed.xcnt * sizeof(TransactionId));


 qsort(snapshot->xip, snapshot->xcnt, sizeof(TransactionId), xidComparator);






 snapshot->subxcnt = 0;
 snapshot->subxip = ((void*)0);

 snapshot->suboverflowed = 0;
 snapshot->takenDuringRecovery = 0;
 snapshot->copied = 0;
 snapshot->curcid = FirstCommandId;
 snapshot->active_count = 0;
 snapshot->regd_count = 0;

 return snapshot;
}
