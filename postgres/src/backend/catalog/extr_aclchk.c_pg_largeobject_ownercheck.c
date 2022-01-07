
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lomowner; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_largeobject_metadata ;


 int AccessShareLock ;
 int Anum_pg_largeobject_metadata_oid ;
 int BTEqualStrategyNumber ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 int F_OIDEQ ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int LargeObjectMetadataOidIndexId ;
 int LargeObjectMetadataRelationId ;
 int ObjectIdGetDatum (int ) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int has_privs_of_role (int ,int ) ;
 scalar_t__ superuser_arg (int ) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

bool
pg_largeobject_ownercheck(Oid lobj_oid, Oid roleid)
{
 Relation pg_lo_meta;
 ScanKeyData entry[1];
 SysScanDesc scan;
 HeapTuple tuple;
 Oid ownerId;


 if (superuser_arg(roleid))
  return 1;


 pg_lo_meta = table_open(LargeObjectMetadataRelationId,
       AccessShareLock);

 ScanKeyInit(&entry[0],
    Anum_pg_largeobject_metadata_oid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(lobj_oid));

 scan = systable_beginscan(pg_lo_meta,
         LargeObjectMetadataOidIndexId, 1,
         ((void*)0), 1, entry);

 tuple = systable_getnext(scan);
 if (!HeapTupleIsValid(tuple))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("large object %u does not exist", lobj_oid)));

 ownerId = ((Form_pg_largeobject_metadata) GETSTRUCT(tuple))->lomowner;

 systable_endscan(scan);
 table_close(pg_lo_meta, AccessShareLock);

 return has_privs_of_role(roleid, ownerId);
}
