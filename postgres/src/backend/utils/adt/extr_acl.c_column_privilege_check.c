
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ attisdropped; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_attribute ;
typedef scalar_t__ AttrNumber ;
typedef scalar_t__ AclResult ;
typedef int AclMode ;


 scalar_t__ ACLCHECK_OK ;
 int ATTNUM ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int Int16GetDatum (scalar_t__) ;
 scalar_t__ InvalidAttrNumber ;
 int ObjectIdGetDatum (int ) ;
 int RELOID ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache2 (int ,int ,int ) ;
 int SearchSysCacheExists1 (int ,int ) ;
 scalar_t__ pg_attribute_aclcheck (int ,scalar_t__,int ,int ) ;
 scalar_t__ pg_class_aclcheck (int ,int ,int ) ;

__attribute__((used)) static int
column_privilege_check(Oid tableoid, AttrNumber attnum,
        Oid roleid, AclMode mode)
{
 AclResult aclresult;
 HeapTuple attTuple;
 Form_pg_attribute attributeForm;




 if (attnum == InvalidAttrNumber)
  return -1;
 if (!SearchSysCacheExists1(RELOID, ObjectIdGetDatum(tableoid)))
  return -1;

 aclresult = pg_class_aclcheck(tableoid, roleid, mode);

 if (aclresult == ACLCHECK_OK)
  return 1;






 attTuple = SearchSysCache2(ATTNUM,
          ObjectIdGetDatum(tableoid),
          Int16GetDatum(attnum));
 if (!HeapTupleIsValid(attTuple))
  return -1;
 attributeForm = (Form_pg_attribute) GETSTRUCT(attTuple);
 if (attributeForm->attisdropped)
 {
  ReleaseSysCache(attTuple);
  return -1;
 }
 ReleaseSysCache(attTuple);

 aclresult = pg_attribute_aclcheck(tableoid, attnum, roleid, mode);

 return (aclresult == ACLCHECK_OK);
}
