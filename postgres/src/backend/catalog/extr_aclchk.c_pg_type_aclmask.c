
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int typlen; int typowner; int typelem; } ;
typedef scalar_t__ Pointer ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_type ;
typedef scalar_t__ Datum ;
typedef int AclMode ;
typedef int AclMaskHow ;
typedef int Acl ;


 int Anum_pg_type_typacl ;
 int * DatumGetAclP (scalar_t__) ;
 scalar_t__ DatumGetPointer (scalar_t__) ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int OBJECT_TYPE ;
 int ObjectIdGetDatum (int ) ;
 scalar_t__ OidIsValid (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 scalar_t__ SysCacheGetAttr (int ,int ,int ,int*) ;
 int TYPEOID ;
 int * acldefault (int ,int ) ;
 int aclmask (int *,int ,int ,int ,int ) ;
 int elog (int ,char*,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int pfree (int *) ;
 scalar_t__ superuser_arg (int ) ;

AclMode
pg_type_aclmask(Oid type_oid, Oid roleid, AclMode mask, AclMaskHow how)
{
 AclMode result;
 HeapTuple tuple;
 Datum aclDatum;
 bool isNull;
 Acl *acl;
 Oid ownerId;

 Form_pg_type typeForm;


 if (superuser_arg(roleid))
  return mask;




 tuple = SearchSysCache1(TYPEOID, ObjectIdGetDatum(type_oid));
 if (!HeapTupleIsValid(tuple))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("type with OID %u does not exist",
      type_oid)));
 typeForm = (Form_pg_type) GETSTRUCT(tuple);





 if (OidIsValid(typeForm->typelem) && typeForm->typlen == -1)
 {
  Oid elttype_oid = typeForm->typelem;

  ReleaseSysCache(tuple);

  tuple = SearchSysCache1(TYPEOID, ObjectIdGetDatum(elttype_oid));

  if (!HeapTupleIsValid(tuple))
   elog(ERROR, "cache lookup failed for type %u", elttype_oid);
  typeForm = (Form_pg_type) GETSTRUCT(tuple);
 }




 ownerId = typeForm->typowner;

 aclDatum = SysCacheGetAttr(TYPEOID, tuple,
          Anum_pg_type_typacl, &isNull);
 if (isNull)
 {

  acl = acldefault(OBJECT_TYPE, ownerId);
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
