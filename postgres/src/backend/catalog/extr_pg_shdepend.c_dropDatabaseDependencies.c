
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int t_self; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef TYPE_1__* HeapTuple ;


 int Anum_pg_shdepend_dbid ;
 int BTEqualStrategyNumber ;
 int CatalogTupleDelete (int ,int *) ;
 int DatabaseRelationId ;
 int F_OIDEQ ;
 scalar_t__ HeapTupleIsValid (TYPE_1__*) ;
 int InvalidOid ;
 int ObjectIdGetDatum (int ) ;
 int RowExclusiveLock ;
 int SHARED_DEPENDENCY_INVALID ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int SharedDependDependerIndexId ;
 int SharedDependRelationId ;
 int shdepDropDependency (int ,int ,int ,int ,int,int ,int ,int ) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 TYPE_1__* systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
dropDatabaseDependencies(Oid databaseId)
{
 Relation sdepRel;
 ScanKeyData key[1];
 SysScanDesc scan;
 HeapTuple tup;

 sdepRel = table_open(SharedDependRelationId, RowExclusiveLock);





 ScanKeyInit(&key[0],
    Anum_pg_shdepend_dbid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(databaseId));


 scan = systable_beginscan(sdepRel, SharedDependDependerIndexId, 1,
         ((void*)0), 1, key);

 while (HeapTupleIsValid(tup = systable_getnext(scan)))
 {
  CatalogTupleDelete(sdepRel, &tup->t_self);
 }

 systable_endscan(scan);


 shdepDropDependency(sdepRel, DatabaseRelationId, databaseId, 0, 1,
      InvalidOid, InvalidOid,
      SHARED_DEPENDENCY_INVALID);

 table_close(sdepRel, RowExclusiveLock);
}
