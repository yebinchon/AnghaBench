
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
 int Anum_pg_largeobject_metadata_oid ;
 int BTEqualStrategyNumber ;
 int F_OIDEQ ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int LargeObjectMetadataOidIndexId ;
 int LargeObjectMetadataRelationId ;
 int ObjectIdGetDatum (int ) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int systable_beginscan (int ,int ,int,int ,int,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

__attribute__((used)) static bool
myLargeObjectExists(Oid loid, Snapshot snapshot)
{
 Relation pg_lo_meta;
 ScanKeyData skey[1];
 SysScanDesc sd;
 HeapTuple tuple;
 bool retval = 0;

 ScanKeyInit(&skey[0],
    Anum_pg_largeobject_metadata_oid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(loid));

 pg_lo_meta = table_open(LargeObjectMetadataRelationId,
       AccessShareLock);

 sd = systable_beginscan(pg_lo_meta,
       LargeObjectMetadataOidIndexId, 1,
       snapshot, 1, skey);

 tuple = systable_getnext(sd);
 if (HeapTupleIsValid(tuple))
  retval = 1;

 systable_endscan(sd);

 table_close(pg_lo_meta, AccessShareLock);

 return retval;
}
