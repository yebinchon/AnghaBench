
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Oid ;
typedef int ObjectAddresses ;


 int ACLCHECK_NOT_OWNER ;
 scalar_t__ AlterTypeNamespaceInternal (scalar_t__,scalar_t__,int,int,int *) ;
 int ERRCODE_WRONG_OBJECT_TYPE ;
 int ERROR ;
 int GetUserId () ;
 scalar_t__ OidIsValid (scalar_t__) ;
 int aclcheck_error_type (int ,scalar_t__) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*,int ) ;
 int errmsg (char*,int ) ;
 int format_type_be (scalar_t__) ;
 scalar_t__ get_array_type (scalar_t__) ;
 scalar_t__ get_element_type (scalar_t__) ;
 int pg_type_ownercheck (scalar_t__,int ) ;

Oid
AlterTypeNamespace_oid(Oid typeOid, Oid nspOid, ObjectAddresses *objsMoved)
{
 Oid elemOid;


 if (!pg_type_ownercheck(typeOid, GetUserId()))
  aclcheck_error_type(ACLCHECK_NOT_OWNER, typeOid);


 elemOid = get_element_type(typeOid);
 if (OidIsValid(elemOid) && get_array_type(elemOid) == typeOid)
  ereport(ERROR,
    (errcode(ERRCODE_WRONG_OBJECT_TYPE),
     errmsg("cannot alter array type %s",
      format_type_be(typeOid)),
     errhint("You can alter type %s, which will alter the array type as well.",
       format_type_be(elemOid))));


 return AlterTypeNamespaceInternal(typeOid, nspOid, 0, 1, objsMoved);
}
