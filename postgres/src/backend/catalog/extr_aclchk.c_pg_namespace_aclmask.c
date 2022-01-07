
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nspowner; } ;
typedef scalar_t__ Pointer ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_namespace ;
typedef scalar_t__ Datum ;
typedef int AclMode ;
typedef int AclMaskHow ;
typedef int Acl ;


 scalar_t__ ACLCHECK_OK ;
 int ACL_ALL_RIGHTS_SCHEMA ;
 int ACL_CREATE_TEMP ;
 int ACL_USAGE ;
 int Anum_pg_namespace_nspacl ;
 int * DatumGetAclP (scalar_t__) ;
 scalar_t__ DatumGetPointer (scalar_t__) ;
 int ERRCODE_UNDEFINED_SCHEMA ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int MyDatabaseId ;
 int NAMESPACEOID ;
 int OBJECT_SCHEMA ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 scalar_t__ SysCacheGetAttr (int ,int ,int ,int*) ;
 int * acldefault (int ,int ) ;
 int aclmask (int *,int ,int ,int,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 scalar_t__ isTempNamespace (int ) ;
 int pfree (int *) ;
 scalar_t__ pg_database_aclcheck (int ,int ,int ) ;
 scalar_t__ superuser_arg (int ) ;

AclMode
pg_namespace_aclmask(Oid nsp_oid, Oid roleid,
      AclMode mask, AclMaskHow how)
{
 AclMode result;
 HeapTuple tuple;
 Datum aclDatum;
 bool isNull;
 Acl *acl;
 Oid ownerId;


 if (superuser_arg(roleid))
  return mask;
 if (isTempNamespace(nsp_oid))
 {
  if (pg_database_aclcheck(MyDatabaseId, roleid,
         ACL_CREATE_TEMP) == ACLCHECK_OK)
   return mask & ACL_ALL_RIGHTS_SCHEMA;
  else
   return mask & ACL_USAGE;
 }




 tuple = SearchSysCache1(NAMESPACEOID, ObjectIdGetDatum(nsp_oid));
 if (!HeapTupleIsValid(tuple))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_SCHEMA),
     errmsg("schema with OID %u does not exist", nsp_oid)));

 ownerId = ((Form_pg_namespace) GETSTRUCT(tuple))->nspowner;

 aclDatum = SysCacheGetAttr(NAMESPACEOID, tuple, Anum_pg_namespace_nspacl,
          &isNull);
 if (isNull)
 {

  acl = acldefault(OBJECT_SCHEMA, ownerId);
  aclDatum = (Datum) 0;
 }
 else
 {

  acl = DatumGetAclP(aclDatum);
 }

 result = aclmask(acl, roleid, ownerId, mask, how);


 if (acl && (Pointer) acl != DatumGetPointer(aclDatum))
  pfree(acl);

 ReleaseSysCache(tuple);

 return result;
}
