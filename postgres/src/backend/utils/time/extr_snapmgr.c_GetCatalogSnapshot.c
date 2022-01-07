
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Snapshot ;
typedef int Oid ;


 int GetNonHistoricCatalogSnapshot (int ) ;
 int HistoricSnapshot ;
 scalar_t__ HistoricSnapshotActive () ;

Snapshot
GetCatalogSnapshot(Oid relid)
{







 if (HistoricSnapshotActive())
  return HistoricSnapshot;

 return GetNonHistoricCatalogSnapshot(relid);
}
