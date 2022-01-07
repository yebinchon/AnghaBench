
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TypeName ;
typedef int Oid ;
typedef scalar_t__ ObjectType ;
typedef int ObjectAddresses ;
typedef int ObjectAddress ;
typedef int List ;


 int AlterTypeNamespace_oid (int ,int ,int *) ;
 int ERRCODE_WRONG_OBJECT_TYPE ;
 int ERROR ;
 int LookupCreationNamespace (char const*) ;
 scalar_t__ OBJECT_DOMAIN ;
 int ObjectAddressSet (int ,int ,int ) ;
 scalar_t__ TYPTYPE_DOMAIN ;
 int TypeRelationId ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int format_type_be (int ) ;
 int free_object_addresses (int *) ;
 scalar_t__ get_typtype (int ) ;
 int * makeTypeNameFromNameList (int *) ;
 int * new_object_addresses () ;
 int typenameTypeId (int *,int *) ;

ObjectAddress
AlterTypeNamespace(List *names, const char *newschema, ObjectType objecttype,
       Oid *oldschema)
{
 TypeName *typename;
 Oid typeOid;
 Oid nspOid;
 Oid oldNspOid;
 ObjectAddresses *objsMoved;
 ObjectAddress myself;


 typename = makeTypeNameFromNameList(names);
 typeOid = typenameTypeId(((void*)0), typename);


 if (objecttype == OBJECT_DOMAIN && get_typtype(typeOid) != TYPTYPE_DOMAIN)
  ereport(ERROR,
    (errcode(ERRCODE_WRONG_OBJECT_TYPE),
     errmsg("%s is not a domain",
      format_type_be(typeOid))));


 nspOid = LookupCreationNamespace(newschema);

 objsMoved = new_object_addresses();
 oldNspOid = AlterTypeNamespace_oid(typeOid, nspOid, objsMoved);
 free_object_addresses(objsMoved);

 if (oldschema)
  *oldschema = oldNspOid;

 ObjectAddressSet(myself, TypeRelationId, typeOid);

 return myself;
}
