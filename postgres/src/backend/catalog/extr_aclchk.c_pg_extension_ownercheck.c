
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int extowner; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_extension ;


 int AccessShareLock ;
 int Anum_pg_extension_oid ;
 int BTEqualStrategyNumber ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 int ExtensionOidIndexId ;
 int ExtensionRelationId ;
 int F_OIDEQ ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
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
pg_extension_ownercheck(Oid ext_oid, Oid roleid)
{
 Relation pg_extension;
 ScanKeyData entry[1];
 SysScanDesc scan;
 HeapTuple tuple;
 Oid ownerId;


 if (superuser_arg(roleid))
  return 1;


 pg_extension = table_open(ExtensionRelationId, AccessShareLock);

 ScanKeyInit(&entry[0],
    Anum_pg_extension_oid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(ext_oid));

 scan = systable_beginscan(pg_extension,
         ExtensionOidIndexId, 1,
         ((void*)0), 1, entry);

 tuple = systable_getnext(scan);
 if (!HeapTupleIsValid(tuple))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("extension with OID %u does not exist", ext_oid)));

 ownerId = ((Form_pg_extension) GETSTRUCT(tuple))->extowner;

 systable_endscan(scan);
 table_close(pg_extension, AccessShareLock);

 return has_privs_of_role(roleid, ownerId);
}
