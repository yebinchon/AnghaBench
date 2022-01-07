
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ph_node; } ;


 TYPE_1__* CatalogSnapshot ;
 int RegisteredSnapshots ;
 int SnapshotResetXmin () ;
 int pairingheap_remove (int *,int *) ;

void
InvalidateCatalogSnapshot(void)
{
 if (CatalogSnapshot)
 {
  pairingheap_remove(&RegisteredSnapshots, &CatalogSnapshot->ph_node);
  CatalogSnapshot = ((void*)0);
  SnapshotResetXmin();
 }
}
