
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int TransactionId ;
struct TYPE_5__ {int myXact; } ;
struct TYPE_4__ {int xid; } ;
typedef TYPE_1__ SERIALIZABLEXIDTAG ;
typedef TYPE_2__ SERIALIZABLEXID ;


 int HASH_FIND ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_SHARED ;
 int MySerializableXact ;
 int MyXactDidWrite ;
 int ReleasePredicateLocks (int,int) ;
 int SerializableXactHashLock ;
 int SerializableXidHash ;
 scalar_t__ hash_search (int ,TYPE_1__*,int ,int *) ;

void
PredicateLockTwoPhaseFinish(TransactionId xid, bool isCommit)
{
 SERIALIZABLEXID *sxid;
 SERIALIZABLEXIDTAG sxidtag;

 sxidtag.xid = xid;

 LWLockAcquire(SerializableXactHashLock, LW_SHARED);
 sxid = (SERIALIZABLEXID *)
  hash_search(SerializableXidHash, &sxidtag, HASH_FIND, ((void*)0));
 LWLockRelease(SerializableXactHashLock);


 if (sxid == ((void*)0))
  return;


 MySerializableXact = sxid->myXact;
 MyXactDidWrite = 1;

 ReleasePredicateLocks(isCommit, 0);
}
