
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef char TransactionId ;
struct TYPE_6__ {int xcnt; scalar_t__ subxcnt; scalar_t__ suboverflowed; int lsn; int whenTaken; int curcid; int takenDuringRecovery; int xmax; int xmin; } ;
struct TYPE_5__ {scalar_t__ subxcnt; int xcnt; TYPE_2__* subxip; TYPE_2__* xip; int takenDuringRecovery; int lsn; int whenTaken; int curcid; scalar_t__ suboverflowed; int xmax; int xmin; } ;
typedef TYPE_1__* Snapshot ;
typedef int Size ;
typedef TYPE_2__ SerializedSnapshotData ;


 int Assert (int) ;
 int memcpy (char*,TYPE_2__*,int) ;

void
SerializeSnapshot(Snapshot snapshot, char *start_address)
{
 SerializedSnapshotData serialized_snapshot;

 Assert(snapshot->subxcnt >= 0);


 serialized_snapshot.xmin = snapshot->xmin;
 serialized_snapshot.xmax = snapshot->xmax;
 serialized_snapshot.xcnt = snapshot->xcnt;
 serialized_snapshot.subxcnt = snapshot->subxcnt;
 serialized_snapshot.suboverflowed = snapshot->suboverflowed;
 serialized_snapshot.takenDuringRecovery = snapshot->takenDuringRecovery;
 serialized_snapshot.curcid = snapshot->curcid;
 serialized_snapshot.whenTaken = snapshot->whenTaken;
 serialized_snapshot.lsn = snapshot->lsn;






 if (serialized_snapshot.suboverflowed && !snapshot->takenDuringRecovery)
  serialized_snapshot.subxcnt = 0;


 memcpy(start_address,
     &serialized_snapshot, sizeof(SerializedSnapshotData));


 if (snapshot->xcnt > 0)
  memcpy((TransactionId *) (start_address +
          sizeof(SerializedSnapshotData)),
      snapshot->xip, snapshot->xcnt * sizeof(TransactionId));







 if (serialized_snapshot.subxcnt > 0)
 {
  Size subxipoff = sizeof(SerializedSnapshotData) +
  snapshot->xcnt * sizeof(TransactionId);

  memcpy((TransactionId *) (start_address + subxipoff),
      snapshot->subxip, snapshot->subxcnt * sizeof(TransactionId));
 }
}
