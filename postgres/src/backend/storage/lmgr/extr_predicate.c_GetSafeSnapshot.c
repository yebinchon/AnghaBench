
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; int possibleUnsafeConflicts; } ;
typedef int Snapshot ;


 int Assert (int) ;
 int DEBUG2 ;
 int ERRCODE_T_R_SERIALIZATION_FAILURE ;
 int GetSerializableTransactionSnapshotInt (int ,int *,int ) ;
 int InvalidPid ;
 TYPE_1__* InvalidSerializableXact ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 TYPE_1__* MySerializableXact ;
 int ProcWaitForSignal (int ) ;
 int ReleasePredicateLocks (int,int) ;
 scalar_t__ SHMQueueEmpty (int *) ;
 int SXACT_FLAG_DEFERRABLE_WAITING ;
 int SerializableXactHashLock ;
 int SxactIsROSafe (TYPE_1__*) ;
 scalar_t__ SxactIsROUnsafe (TYPE_1__*) ;
 int WAIT_EVENT_SAFE_SNAPSHOT ;
 scalar_t__ XactDeferrable ;
 scalar_t__ XactReadOnly ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;

__attribute__((used)) static Snapshot
GetSafeSnapshot(Snapshot origSnapshot)
{
 Snapshot snapshot;

 Assert(XactReadOnly && XactDeferrable);

 while (1)
 {






  snapshot = GetSerializableTransactionSnapshotInt(origSnapshot,
               ((void*)0), InvalidPid);

  if (MySerializableXact == InvalidSerializableXact)
   return snapshot;

  LWLockAcquire(SerializableXactHashLock, LW_EXCLUSIVE);





  MySerializableXact->flags |= SXACT_FLAG_DEFERRABLE_WAITING;
  while (!(SHMQueueEmpty(&MySerializableXact->possibleUnsafeConflicts) ||
     SxactIsROUnsafe(MySerializableXact)))
  {
   LWLockRelease(SerializableXactHashLock);
   ProcWaitForSignal(WAIT_EVENT_SAFE_SNAPSHOT);
   LWLockAcquire(SerializableXactHashLock, LW_EXCLUSIVE);
  }
  MySerializableXact->flags &= ~SXACT_FLAG_DEFERRABLE_WAITING;

  if (!SxactIsROUnsafe(MySerializableXact))
  {
   LWLockRelease(SerializableXactHashLock);
   break;
  }

  LWLockRelease(SerializableXactHashLock);


  ereport(DEBUG2,
    (errcode(ERRCODE_T_R_SERIALIZATION_FAILURE),
     errmsg("deferrable snapshot was unsafe; trying a new one")));
  ReleasePredicateLocks(0, 0);
 }




 Assert(SxactIsROSafe(MySerializableXact));
 ReleasePredicateLocks(0, 1);

 return snapshot;
}
