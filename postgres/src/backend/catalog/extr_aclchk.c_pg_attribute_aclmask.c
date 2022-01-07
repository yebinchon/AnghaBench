
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ attisdropped; } ;
struct TYPE_3__ {int relowner; } ;
typedef scalar_t__ Pointer ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_class ;
typedef TYPE_2__* Form_pg_attribute ;
typedef int Datum ;
typedef int AttrNumber ;
typedef int AclMode ;
typedef int AclMaskHow ;
typedef int Acl ;


 int ATTNUM ;
 int Anum_pg_attribute_attacl ;
 int * DatumGetAclP (int ) ;
 scalar_t__ DatumGetPointer (int ) ;
 int ERRCODE_UNDEFINED_COLUMN ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int Int16GetDatum (int ) ;
 int ObjectIdGetDatum (int ) ;
 int RELOID ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int SearchSysCache2 (int ,int ,int ) ;
 int SysCacheGetAttr (int ,int ,int ,int*) ;
 int aclmask (int *,int ,int ,int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ,int ) ;
 int pfree (int *) ;

AclMode
pg_attribute_aclmask(Oid table_oid, AttrNumber attnum, Oid roleid,
      AclMode mask, AclMaskHow how)
{
 AclMode result;
 HeapTuple classTuple;
 HeapTuple attTuple;
 Form_pg_class classForm;
 Form_pg_attribute attributeForm;
 Datum aclDatum;
 bool isNull;
 Acl *acl;
 Oid ownerId;




 attTuple = SearchSysCache2(ATTNUM,
          ObjectIdGetDatum(table_oid),
          Int16GetDatum(attnum));
 if (!HeapTupleIsValid(attTuple))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_COLUMN),
     errmsg("attribute %d of relation with OID %u does not exist",
      attnum, table_oid)));
 attributeForm = (Form_pg_attribute) GETSTRUCT(attTuple);


 if (attributeForm->attisdropped)
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_COLUMN),
     errmsg("attribute %d of relation with OID %u does not exist",
      attnum, table_oid)));

 aclDatum = SysCacheGetAttr(ATTNUM, attTuple, Anum_pg_attribute_attacl,
          &isNull);






 if (isNull)
 {
  ReleaseSysCache(attTuple);
  return 0;
 }
 classTuple = SearchSysCache1(RELOID, ObjectIdGetDatum(table_oid));
 if (!HeapTupleIsValid(classTuple))
 {
  ReleaseSysCache(attTuple);
  return 0;
 }
 classForm = (Form_pg_class) GETSTRUCT(classTuple);

 ownerId = classForm->relowner;

 ReleaseSysCache(classTuple);


 acl = DatumGetAclP(aclDatum);

 result = aclmask(acl, roleid, ownerId, mask, how);


 if (acl && (Pointer) acl != DatumGetPointer(aclDatum))
  pfree(acl);

 ReleaseSysCache(attTuple);

 return result;
}
