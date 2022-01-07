
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VirtualTransactionId ;
typedef int Snapshot ;


 int Assert (int ) ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 int GetSerializableTransactionSnapshotInt (int ,int *,int) ;
 scalar_t__ IsParallelWorker () ;
 int IsolationIsSerializable () ;
 scalar_t__ XactDeferrable ;
 scalar_t__ XactReadOnly ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;

void
SetSerializableTransactionSnapshot(Snapshot snapshot,
           VirtualTransactionId *sourcevxid,
           int sourcepid)
{
 Assert(IsolationIsSerializable());
 if (IsParallelWorker())
  return;







 if (XactReadOnly && XactDeferrable)
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("a snapshot-importing transaction must not be READ ONLY DEFERRABLE")));

 (void) GetSerializableTransactionSnapshotInt(snapshot, sourcevxid,
             sourcepid);
}
