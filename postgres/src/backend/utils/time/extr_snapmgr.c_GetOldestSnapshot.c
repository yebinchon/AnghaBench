
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ XLogRecPtr ;
struct TYPE_6__ {TYPE_1__* as_snap; } ;
struct TYPE_5__ {scalar_t__ lsn; } ;
typedef TYPE_1__* Snapshot ;


 scalar_t__ InvalidXLogRecPtr ;
 TYPE_3__* OldestActiveSnapshot ;
 int RegisteredSnapshots ;
 int SnapshotData ;
 scalar_t__ XLogRecPtrIsInvalid (scalar_t__) ;
 TYPE_1__* pairingheap_container (int ,int ,int ) ;
 int pairingheap_first (int *) ;
 int pairingheap_is_empty (int *) ;
 int ph_node ;

Snapshot
GetOldestSnapshot(void)
{
 Snapshot OldestRegisteredSnapshot = ((void*)0);
 XLogRecPtr RegisteredLSN = InvalidXLogRecPtr;

 if (!pairingheap_is_empty(&RegisteredSnapshots))
 {
  OldestRegisteredSnapshot = pairingheap_container(SnapshotData, ph_node,
               pairingheap_first(&RegisteredSnapshots));
  RegisteredLSN = OldestRegisteredSnapshot->lsn;
 }

 if (OldestActiveSnapshot != ((void*)0))
 {
  XLogRecPtr ActiveLSN = OldestActiveSnapshot->as_snap->lsn;

  if (XLogRecPtrIsInvalid(RegisteredLSN) || RegisteredLSN > ActiveLSN)
   return OldestActiveSnapshot->as_snap;
 }

 return OldestRegisteredSnapshot;
}
