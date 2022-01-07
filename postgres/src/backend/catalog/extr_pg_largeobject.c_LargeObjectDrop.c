
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


 int Anum_pg_largeobject_loid ;
 int Anum_pg_largeobject_metadata_oid ;
 int BTEqualStrategyNumber ;
 int CatalogTupleDelete (int ,int *) ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 int F_OIDEQ ;
 scalar_t__ HeapTupleIsValid (TYPE_1__*) ;
 int LargeObjectLOidPNIndexId ;
 int LargeObjectMetadataOidIndexId ;
 int LargeObjectMetadataRelationId ;
 int LargeObjectRelationId ;
 int ObjectIdGetDatum (int ) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 TYPE_1__* systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
LargeObjectDrop(Oid loid)
{
 Relation pg_lo_meta;
 Relation pg_largeobject;
 ScanKeyData skey[1];
 SysScanDesc scan;
 HeapTuple tuple;

 pg_lo_meta = table_open(LargeObjectMetadataRelationId,
       RowExclusiveLock);

 pg_largeobject = table_open(LargeObjectRelationId,
        RowExclusiveLock);




 ScanKeyInit(&skey[0],
    Anum_pg_largeobject_metadata_oid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(loid));

 scan = systable_beginscan(pg_lo_meta,
         LargeObjectMetadataOidIndexId, 1,
         ((void*)0), 1, skey);

 tuple = systable_getnext(scan);
 if (!HeapTupleIsValid(tuple))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("large object %u does not exist", loid)));

 CatalogTupleDelete(pg_lo_meta, &tuple->t_self);

 systable_endscan(scan);




 ScanKeyInit(&skey[0],
    Anum_pg_largeobject_loid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(loid));

 scan = systable_beginscan(pg_largeobject,
         LargeObjectLOidPNIndexId, 1,
         ((void*)0), 1, skey);
 while (HeapTupleIsValid(tuple = systable_getnext(scan)))
 {
  CatalogTupleDelete(pg_largeobject, &tuple->t_self);
 }

 systable_endscan(scan);

 table_close(pg_largeobject, RowExclusiveLock);

 table_close(pg_lo_meta, RowExclusiveLock);
}
