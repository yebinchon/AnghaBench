
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lanowner; } ;
typedef scalar_t__ Pointer ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_language ;
typedef scalar_t__ Datum ;
typedef int AclMode ;
typedef int AclMaskHow ;
typedef int Acl ;


 int Anum_pg_language_lanacl ;
 int * DatumGetAclP (scalar_t__) ;
 scalar_t__ DatumGetPointer (scalar_t__) ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int LANGOID ;
 int OBJECT_LANGUAGE ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 scalar_t__ SysCacheGetAttr (int ,int ,int ,int*) ;
 int * acldefault (int ,int ) ;
 int aclmask (int *,int ,int ,int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int pfree (int *) ;
 scalar_t__ superuser_arg (int ) ;

AclMode
pg_language_aclmask(Oid lang_oid, Oid roleid,
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




 tuple = SearchSysCache1(LANGOID, ObjectIdGetDatum(lang_oid));
 if (!HeapTupleIsValid(tuple))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("language with OID %u does not exist", lang_oid)));

 ownerId = ((Form_pg_language) GETSTRUCT(tuple))->lanowner;

 aclDatum = SysCacheGetAttr(LANGOID, tuple, Anum_pg_language_lanacl,
          &isNull);
 if (isNull)
 {

  acl = acldefault(OBJECT_LANGUAGE, ownerId);
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
