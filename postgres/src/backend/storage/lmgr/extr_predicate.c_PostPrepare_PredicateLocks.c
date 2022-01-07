
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int TransactionId ;
struct TYPE_4__ {scalar_t__ pid; } ;


 int Assert (int ) ;
 TYPE_1__* InvalidSerializableXact ;
 int * LocalPredicateLockHash ;
 TYPE_1__* MySerializableXact ;
 int MyXactDidWrite ;
 int SxactIsPrepared (TYPE_1__*) ;
 int hash_destroy (int *) ;

void
PostPrepare_PredicateLocks(TransactionId xid)
{
 if (MySerializableXact == InvalidSerializableXact)
  return;

 Assert(SxactIsPrepared(MySerializableXact));

 MySerializableXact->pid = 0;

 hash_destroy(LocalPredicateLockHash);
 LocalPredicateLockHash = ((void*)0);

 MySerializableXact = InvalidSerializableXact;
 MyXactDidWrite = 0;
}
