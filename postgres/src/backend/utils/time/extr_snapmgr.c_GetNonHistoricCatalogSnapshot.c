
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ph_node; } ;
typedef TYPE_1__* Snapshot ;
typedef int Oid ;


 TYPE_1__* CatalogSnapshot ;
 int CatalogSnapshotData ;
 TYPE_1__* GetSnapshotData (int *) ;
 int InvalidateCatalogSnapshot () ;
 int RegisteredSnapshots ;
 int RelationHasSysCache (int ) ;
 int RelationInvalidatesSnapshotsOnly (int ) ;
 int pairingheap_add (int *,int *) ;

Snapshot
GetNonHistoricCatalogSnapshot(Oid relid)
{







 if (CatalogSnapshot &&
  !RelationInvalidatesSnapshotsOnly(relid) &&
  !RelationHasSysCache(relid))
  InvalidateCatalogSnapshot();

 if (CatalogSnapshot == ((void*)0))
 {

  CatalogSnapshot = GetSnapshotData(&CatalogSnapshotData);
  pairingheap_add(&RegisteredSnapshots, &CatalogSnapshot->ph_node);
 }

 return CatalogSnapshot;
}
