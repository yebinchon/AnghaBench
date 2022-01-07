
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int HeapTuple ;


 int AccessShareLock ;
 int Anum_pg_database_datname ;
 int BTEqualStrategyNumber ;
 int CStringGetDatum (char const*) ;
 int DatabaseNameIndexId ;
 int DatabaseRelationId ;
 int F_NAMEEQ ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int criticalSharedRelcachesBuilt ;
 int heap_copytuple (int ) ;
 int systable_beginscan (int ,int ,int ,int *,int,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

__attribute__((used)) static HeapTuple
GetDatabaseTuple(const char *dbname)
{
 HeapTuple tuple;
 Relation relation;
 SysScanDesc scan;
 ScanKeyData key[1];




 ScanKeyInit(&key[0],
    Anum_pg_database_datname,
    BTEqualStrategyNumber, F_NAMEEQ,
    CStringGetDatum(dbname));






 relation = table_open(DatabaseRelationId, AccessShareLock);
 scan = systable_beginscan(relation, DatabaseNameIndexId,
         criticalSharedRelcachesBuilt,
         ((void*)0),
         1, key);

 tuple = systable_getnext(scan);


 if (HeapTupleIsValid(tuple))
  tuple = heap_copytuple(tuple);


 systable_endscan(scan);
 table_close(relation, AccessShareLock);

 return tuple;
}
