
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SysScanDesc ;
typedef int Snapshot ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef int HeapTuple ;


 int AccessShareLock ;
 int Anum_pg_class_oid ;
 int BTEqualStrategyNumber ;
 int ClassOidIndexId ;
 int FATAL ;
 int F_OIDEQ ;
 int GetCatalogSnapshot (int ) ;
 int GetNonHistoricCatalogSnapshot (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int MyDatabaseId ;
 int ObjectIdGetDatum (int ) ;
 int OidIsValid (int ) ;
 int RelationRelationId ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 scalar_t__ criticalRelcachesBuilt ;
 int elog (int ,char*) ;
 int heap_copytuple (int ) ;
 int systable_beginscan (int ,int ,int,int ,int,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

__attribute__((used)) static HeapTuple
ScanPgRelation(Oid targetRelId, bool indexOK, bool force_non_historic)
{
 HeapTuple pg_class_tuple;
 Relation pg_class_desc;
 SysScanDesc pg_class_scan;
 ScanKeyData key[1];
 Snapshot snapshot;







 if (!OidIsValid(MyDatabaseId))
  elog(FATAL, "cannot read pg_class without having selected a database");




 ScanKeyInit(&key[0],
    Anum_pg_class_oid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(targetRelId));







 pg_class_desc = table_open(RelationRelationId, AccessShareLock);






 if (force_non_historic)
  snapshot = GetNonHistoricCatalogSnapshot(RelationRelationId);
 else
  snapshot = GetCatalogSnapshot(RelationRelationId);

 pg_class_scan = systable_beginscan(pg_class_desc, ClassOidIndexId,
            indexOK && criticalRelcachesBuilt,
            snapshot,
            1, key);

 pg_class_tuple = systable_getnext(pg_class_scan);




 if (HeapTupleIsValid(pg_class_tuple))
  pg_class_tuple = heap_copytuple(pg_class_tuple);


 systable_endscan(pg_class_scan);
 table_close(pg_class_desc, AccessShareLock);

 return pg_class_tuple;
}
