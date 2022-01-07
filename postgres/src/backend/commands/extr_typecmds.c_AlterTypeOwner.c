
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TypeName ;
struct TYPE_2__ {scalar_t__ typtype; scalar_t__ typelem; scalar_t__ typowner; int typnamespace; int oid; int typrelid; } ;
typedef int Relation ;
typedef scalar_t__ Oid ;
typedef scalar_t__ ObjectType ;
typedef int ObjectAddress ;
typedef int List ;
typedef int * HeapTuple ;
typedef TYPE_1__* Form_pg_type ;
typedef scalar_t__ AclResult ;


 int ACLCHECK_NOT_OWNER ;
 scalar_t__ ACLCHECK_OK ;
 int ACL_CREATE ;
 int AlterTypeOwner_oid (scalar_t__,scalar_t__,int) ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERRCODE_WRONG_OBJECT_TYPE ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int *) ;
 int GetUserId () ;
 int * LookupTypeName (int *,int *,int *,int) ;
 scalar_t__ OBJECT_DOMAIN ;
 int OBJECT_SCHEMA ;
 int ObjectAddressSet (int ,int ,scalar_t__) ;
 scalar_t__ OidIsValid (scalar_t__) ;
 scalar_t__ RELKIND_COMPOSITE_TYPE ;
 int ReleaseSysCache (int *) ;
 int RowExclusiveLock ;
 scalar_t__ TYPTYPE_COMPOSITE ;
 scalar_t__ TYPTYPE_DOMAIN ;
 int TypeNameToString (int *) ;
 int TypeRelationId ;
 int aclcheck_error (scalar_t__,int ,int ) ;
 int aclcheck_error_type (int ,int ) ;
 int check_is_member_of_role (int ,scalar_t__) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*,...) ;
 int errmsg (char*,int ) ;
 int format_type_be (scalar_t__) ;
 scalar_t__ get_array_type (scalar_t__) ;
 int get_namespace_name (int ) ;
 scalar_t__ get_rel_relkind (int ) ;
 int * heap_copytuple (int *) ;
 int * makeTypeNameFromNameList (int *) ;
 scalar_t__ pg_namespace_aclcheck (int ,scalar_t__,int ) ;
 int pg_type_ownercheck (int ,int ) ;
 int superuser () ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;
 scalar_t__ typeTypeId (int *) ;

ObjectAddress
AlterTypeOwner(List *names, Oid newOwnerId, ObjectType objecttype)
{
 TypeName *typename;
 Oid typeOid;
 Relation rel;
 HeapTuple tup;
 HeapTuple newtup;
 Form_pg_type typTup;
 AclResult aclresult;
 ObjectAddress address;

 rel = table_open(TypeRelationId, RowExclusiveLock);


 typename = makeTypeNameFromNameList(names);


 tup = LookupTypeName(((void*)0), typename, ((void*)0), 0);
 if (tup == ((void*)0))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("type \"%s\" does not exist",
      TypeNameToString(typename))));
 typeOid = typeTypeId(tup);


 newtup = heap_copytuple(tup);
 ReleaseSysCache(tup);
 tup = newtup;
 typTup = (Form_pg_type) GETSTRUCT(tup);


 if (objecttype == OBJECT_DOMAIN && typTup->typtype != TYPTYPE_DOMAIN)
  ereport(ERROR,
    (errcode(ERRCODE_WRONG_OBJECT_TYPE),
     errmsg("%s is not a domain",
      format_type_be(typeOid))));






 if (typTup->typtype == TYPTYPE_COMPOSITE &&
  get_rel_relkind(typTup->typrelid) != RELKIND_COMPOSITE_TYPE)
  ereport(ERROR,
    (errcode(ERRCODE_WRONG_OBJECT_TYPE),
     errmsg("%s is a table's row type",
      format_type_be(typeOid)),
     errhint("Use ALTER TABLE instead.")));


 if (OidIsValid(typTup->typelem) &&
  get_array_type(typTup->typelem) == typeOid)
  ereport(ERROR,
    (errcode(ERRCODE_WRONG_OBJECT_TYPE),
     errmsg("cannot alter array type %s",
      format_type_be(typeOid)),
     errhint("You can alter type %s, which will alter the array type as well.",
       format_type_be(typTup->typelem))));





 if (typTup->typowner != newOwnerId)
 {

  if (!superuser())
  {

   if (!pg_type_ownercheck(typTup->oid, GetUserId()))
    aclcheck_error_type(ACLCHECK_NOT_OWNER, typTup->oid);


   check_is_member_of_role(GetUserId(), newOwnerId);


   aclresult = pg_namespace_aclcheck(typTup->typnamespace,
             newOwnerId,
             ACL_CREATE);
   if (aclresult != ACLCHECK_OK)
    aclcheck_error(aclresult, OBJECT_SCHEMA,
          get_namespace_name(typTup->typnamespace));
  }

  AlterTypeOwner_oid(typeOid, newOwnerId, 1);
 }

 ObjectAddressSet(address, TypeRelationId, typeOid);


 table_close(rel, RowExclusiveLock);

 return address;
}
