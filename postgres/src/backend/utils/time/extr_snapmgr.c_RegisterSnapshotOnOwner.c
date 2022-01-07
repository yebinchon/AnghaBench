
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int regd_count; int ph_node; scalar_t__ copied; } ;
typedef TYPE_1__* Snapshot ;
typedef int ResourceOwner ;


 TYPE_1__* CopySnapshot (TYPE_1__*) ;
 TYPE_1__* InvalidSnapshot ;
 int RegisteredSnapshots ;
 int ResourceOwnerEnlargeSnapshots (int ) ;
 int ResourceOwnerRememberSnapshot (int ,TYPE_1__*) ;
 int pairingheap_add (int *,int *) ;

Snapshot
RegisterSnapshotOnOwner(Snapshot snapshot, ResourceOwner owner)
{
 Snapshot snap;

 if (snapshot == InvalidSnapshot)
  return InvalidSnapshot;


 snap = snapshot->copied ? snapshot : CopySnapshot(snapshot);


 ResourceOwnerEnlargeSnapshots(owner);
 snap->regd_count++;
 ResourceOwnerRememberSnapshot(owner, snap);

 if (snap->regd_count == 1)
  pairingheap_add(&RegisteredSnapshots, &snap->ph_node);

 return snap;
}
