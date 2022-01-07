
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lomowner; } ;
typedef int SysScanDesc ;
typedef int Snapshot ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef scalar_t__ Pointer ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_largeobject_metadata ;
typedef scalar_t__ Datum ;
typedef int AclMode ;
typedef int AclMaskHow ;
typedef int Acl ;


 int AccessShareLock ;
 int Anum_pg_largeobject_metadata_lomacl ;
 int Anum_pg_largeobject_metadata_oid ;
 int BTEqualStrategyNumber ;
 int * DatumGetAclP (scalar_t__) ;
 scalar_t__ DatumGetPointer (scalar_t__) ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 int F_OIDEQ ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int LargeObjectMetadataOidIndexId ;
 int LargeObjectMetadataRelationId ;
 int OBJECT_LARGEOBJECT ;
 int ObjectIdGetDatum (int ) ;
 int RelationGetDescr (int ) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int * acldefault (int ,int ) ;
 int aclmask (int *,int ,int ,int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 scalar_t__ heap_getattr (int ,int ,int ,int*) ;
 int pfree (int *) ;
 scalar_t__ superuser_arg (int ) ;
 int systable_beginscan (int ,int ,int,int ,int,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

AclMode
pg_largeobject_aclmask_snapshot(Oid lobj_oid, Oid roleid,
        AclMode mask, AclMaskHow how,
        Snapshot snapshot)
{
 AclMode result;
 Relation pg_lo_meta;
 ScanKeyData entry[1];
 SysScanDesc scan;
 HeapTuple tuple;
 Datum aclDatum;
 bool isNull;
 Acl *acl;
 Oid ownerId;


 if (superuser_arg(roleid))
  return mask;




 pg_lo_meta = table_open(LargeObjectMetadataRelationId,
       AccessShareLock);

 ScanKeyInit(&entry[0],
    Anum_pg_largeobject_metadata_oid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(lobj_oid));

 scan = systable_beginscan(pg_lo_meta,
         LargeObjectMetadataOidIndexId, 1,
         snapshot, 1, entry);

 tuple = systable_getnext(scan);
 if (!HeapTupleIsValid(tuple))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("large object %u does not exist", lobj_oid)));

 ownerId = ((Form_pg_largeobject_metadata) GETSTRUCT(tuple))->lomowner;

 aclDatum = heap_getattr(tuple, Anum_pg_largeobject_metadata_lomacl,
       RelationGetDescr(pg_lo_meta), &isNull);

 if (isNull)
 {

  acl = acldefault(OBJECT_LARGEOBJECT, ownerId);
  aclDatum = (Datum) 0;
 }
 else
 {

  acl = DatumGetAclP(aclDatum);
 }

 result = aclmask(acl, roleid, ownerId, mask, how);


 if (acl && (Pointer) acl != DatumGetPointer(aclDatum))
  pfree(acl);

 systable_endscan(scan);

 table_close(pg_lo_meta, AccessShareLock);

 return result;
}
