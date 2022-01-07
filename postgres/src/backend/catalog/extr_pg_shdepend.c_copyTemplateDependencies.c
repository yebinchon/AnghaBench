
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int values ;
typedef int replace ;
typedef int nulls ;
typedef int TupleDesc ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef int HeapTuple ;
typedef int Datum ;
typedef int CatalogIndexState ;


 int Anum_pg_shdepend_dbid ;
 int BTEqualStrategyNumber ;
 int CatalogCloseIndexes (int ) ;
 int CatalogOpenIndexes (int ) ;
 int CatalogTupleInsertWithInfo (int ,int ,int ) ;
 int F_OIDEQ ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int Natts_pg_shdepend ;
 int ObjectIdGetDatum (int ) ;
 int RelationGetDescr (int ) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int,int ,int ,int) ;
 int SharedDependDependerIndexId ;
 int SharedDependRelationId ;
 int heap_freetuple (int ) ;
 int heap_modify_tuple (int ,int ,int*,int*,int*) ;
 int memset (int*,int,int) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
copyTemplateDependencies(Oid templateDbId, Oid newDbId)
{
 Relation sdepRel;
 TupleDesc sdepDesc;
 ScanKeyData key[1];
 SysScanDesc scan;
 HeapTuple tup;
 CatalogIndexState indstate;
 Datum values[Natts_pg_shdepend];
 bool nulls[Natts_pg_shdepend];
 bool replace[Natts_pg_shdepend];

 sdepRel = table_open(SharedDependRelationId, RowExclusiveLock);
 sdepDesc = RelationGetDescr(sdepRel);

 indstate = CatalogOpenIndexes(sdepRel);


 ScanKeyInit(&key[0],
    Anum_pg_shdepend_dbid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(templateDbId));

 scan = systable_beginscan(sdepRel, SharedDependDependerIndexId, 1,
         ((void*)0), 1, key);


 memset(values, 0, sizeof(values));
 memset(nulls, 0, sizeof(nulls));
 memset(replace, 0, sizeof(replace));

 replace[Anum_pg_shdepend_dbid - 1] = 1;
 values[Anum_pg_shdepend_dbid - 1] = ObjectIdGetDatum(newDbId);
 while (HeapTupleIsValid(tup = systable_getnext(scan)))
 {
  HeapTuple newtup;

  newtup = heap_modify_tuple(tup, sdepDesc, values, nulls, replace);
  CatalogTupleInsertWithInfo(sdepRel, newtup, indstate);

  heap_freetuple(newtup);
 }

 systable_endscan(scan);

 CatalogCloseIndexes(indstate);
 table_close(sdepRel, RowExclusiveLock);
}
