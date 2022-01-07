
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Snapshot ;


 int Assert (int ) ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 int GetSafeSnapshot (int ) ;
 int GetSerializableTransactionSnapshotInt (int ,int *,int ) ;
 int InvalidPid ;
 int IsolationIsSerializable () ;
 scalar_t__ RecoveryInProgress () ;
 scalar_t__ XactDeferrable ;
 scalar_t__ XactReadOnly ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*) ;
 int errhint (char*) ;
 int errmsg (char*) ;

Snapshot
GetSerializableTransactionSnapshot(Snapshot snapshot)
{
 Assert(IsolationIsSerializable());







 if (RecoveryInProgress())
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("cannot use serializable mode in a hot standby"),
     errdetail("\"default_transaction_isolation\" is set to \"serializable\"."),
     errhint("You can use \"SET default_transaction_isolation = 'repeatable read'\" to change the default.")));






 if (XactReadOnly && XactDeferrable)
  return GetSafeSnapshot(snapshot);

 return GetSerializableTransactionSnapshotInt(snapshot,
             ((void*)0), InvalidPid);
}
