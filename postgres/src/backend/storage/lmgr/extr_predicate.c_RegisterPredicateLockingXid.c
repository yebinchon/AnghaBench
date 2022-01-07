
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* TransactionId ;
struct TYPE_8__ {scalar_t__ topXid; } ;
struct TYPE_7__ {TYPE_4__* myXact; } ;
struct TYPE_6__ {void* xid; } ;
typedef TYPE_1__ SERIALIZABLEXIDTAG ;
typedef TYPE_2__ SERIALIZABLEXID ;


 int Assert (int) ;
 int HASH_ENTER ;
 TYPE_4__* InvalidSerializableXact ;
 scalar_t__ InvalidTransactionId ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 TYPE_4__* MySerializableXact ;
 int SerializableXactHashLock ;
 int SerializableXidHash ;
 int TransactionIdIsValid (void*) ;
 scalar_t__ hash_search (int ,TYPE_1__*,int ,int*) ;

void
RegisterPredicateLockingXid(TransactionId xid)
{
 SERIALIZABLEXIDTAG sxidtag;
 SERIALIZABLEXID *sxid;
 bool found;





 if (MySerializableXact == InvalidSerializableXact)
  return;


 Assert(TransactionIdIsValid(xid));

 LWLockAcquire(SerializableXactHashLock, LW_EXCLUSIVE);


 Assert(MySerializableXact->topXid == InvalidTransactionId);

 MySerializableXact->topXid = xid;

 sxidtag.xid = xid;
 sxid = (SERIALIZABLEXID *) hash_search(SerializableXidHash,
             &sxidtag,
             HASH_ENTER, &found);
 Assert(!found);


 sxid->myXact = MySerializableXact;
 LWLockRelease(SerializableXactHashLock);
}
