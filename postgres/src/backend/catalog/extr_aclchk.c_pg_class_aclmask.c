
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int relkind; int relowner; } ;
typedef scalar_t__ Pointer ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_class ;
typedef scalar_t__ Datum ;
typedef int AclMode ;
typedef int AclMaskHow ;
typedef int Acl ;


 int ACL_DELETE ;
 int ACL_INSERT ;
 int ACL_TRUNCATE ;
 int ACL_UPDATE ;
 int ACL_USAGE ;
 int Anum_pg_class_relacl ;
 int DEBUG2 ;
 int * DatumGetAclP (scalar_t__) ;
 scalar_t__ DatumGetPointer (scalar_t__) ;
 int ERRCODE_UNDEFINED_TABLE ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 scalar_t__ IsSystemClass (int ,TYPE_1__*) ;
 int OBJECT_SEQUENCE ;
 int OBJECT_TABLE ;
 int ObjectIdGetDatum (int ) ;

 int RELKIND_VIEW ;
 int RELOID ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 scalar_t__ SysCacheGetAttr (int ,int ,int ,int*) ;
 int * acldefault (int ,int ) ;
 int aclmask (int *,int ,int ,int,int ) ;
 int allowSystemTableMods ;
 int elog (int ,char*,...) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int pfree (int *) ;
 scalar_t__ superuser_arg (int ) ;

AclMode
pg_class_aclmask(Oid table_oid, Oid roleid,
     AclMode mask, AclMaskHow how)
{
 AclMode result;
 HeapTuple tuple;
 Form_pg_class classForm;
 Datum aclDatum;
 bool isNull;
 Acl *acl;
 Oid ownerId;




 tuple = SearchSysCache1(RELOID, ObjectIdGetDatum(table_oid));
 if (!HeapTupleIsValid(tuple))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_TABLE),
     errmsg("relation with OID %u does not exist",
      table_oid)));
 classForm = (Form_pg_class) GETSTRUCT(tuple);
 if ((mask & (ACL_INSERT | ACL_UPDATE | ACL_DELETE | ACL_TRUNCATE | ACL_USAGE)) &&
  IsSystemClass(table_oid, classForm) &&
  classForm->relkind != RELKIND_VIEW &&
  !superuser_arg(roleid) &&
  !allowSystemTableMods)
 {



  mask &= ~(ACL_INSERT | ACL_UPDATE | ACL_DELETE | ACL_TRUNCATE | ACL_USAGE);
 }




 if (superuser_arg(roleid))
 {



  ReleaseSysCache(tuple);
  return mask;
 }




 ownerId = classForm->relowner;

 aclDatum = SysCacheGetAttr(RELOID, tuple, Anum_pg_class_relacl,
          &isNull);
 if (isNull)
 {

  switch (classForm->relkind)
  {
   case 128:
    acl = acldefault(OBJECT_SEQUENCE, ownerId);
    break;
   default:
    acl = acldefault(OBJECT_TABLE, ownerId);
    break;
  }
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
