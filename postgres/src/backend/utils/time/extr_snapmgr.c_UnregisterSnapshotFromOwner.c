
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ regd_count; scalar_t__ active_count; int ph_node; } ;
typedef TYPE_1__* Snapshot ;
typedef int ResourceOwner ;


 int Assert (int) ;
 int FreeSnapshot (TYPE_1__*) ;
 int RegisteredSnapshots ;
 int ResourceOwnerForgetSnapshot (int ,TYPE_1__*) ;
 int SnapshotResetXmin () ;
 int pairingheap_is_empty (int *) ;
 int pairingheap_remove (int *,int *) ;

void
UnregisterSnapshotFromOwner(Snapshot snapshot, ResourceOwner owner)
{
 if (snapshot == ((void*)0))
  return;

 Assert(snapshot->regd_count > 0);
 Assert(!pairingheap_is_empty(&RegisteredSnapshots));

 ResourceOwnerForgetSnapshot(owner, snapshot);

 snapshot->regd_count--;
 if (snapshot->regd_count == 0)
  pairingheap_remove(&RegisteredSnapshots, &snapshot->ph_node);

 if (snapshot->regd_count == 0 && snapshot->active_count == 0)
 {
  FreeSnapshot(snapshot);
  SnapshotResetXmin();
 }
}
