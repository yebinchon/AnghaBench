
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int xmin; } ;
struct TYPE_4__ {int xmin; } ;
typedef TYPE_1__* Snapshot ;


 int * ActiveSnapshot ;
 int InvalidTransactionId ;
 TYPE_3__* MyPgXact ;
 int RegisteredSnapshots ;
 int SnapshotData ;
 scalar_t__ TransactionIdPrecedes (int ,int ) ;
 TYPE_1__* pairingheap_container (int ,int ,int ) ;
 int pairingheap_first (int *) ;
 scalar_t__ pairingheap_is_empty (int *) ;
 int ph_node ;

__attribute__((used)) static void
SnapshotResetXmin(void)
{
 Snapshot minSnapshot;

 if (ActiveSnapshot != ((void*)0))
  return;

 if (pairingheap_is_empty(&RegisteredSnapshots))
 {
  MyPgXact->xmin = InvalidTransactionId;
  return;
 }

 minSnapshot = pairingheap_container(SnapshotData, ph_node,
          pairingheap_first(&RegisteredSnapshots));

 if (TransactionIdPrecedes(MyPgXact->xmin, minSnapshot->xmin))
  MyPgXact->xmin = minSnapshot->xmin;
}
