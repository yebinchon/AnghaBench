
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * ActiveSnapshot ;
 scalar_t__ CatalogSnapshot ;
 int InvalidateCatalogSnapshot () ;
 int RegisteredSnapshots ;
 scalar_t__ pairingheap_is_singular (int *) ;

void
InvalidateCatalogSnapshotConditionally(void)
{
 if (CatalogSnapshot &&
  ActiveSnapshot == ((void*)0) &&
  pairingheap_is_singular(&RegisteredSnapshots))
  InvalidateCatalogSnapshot();
}
