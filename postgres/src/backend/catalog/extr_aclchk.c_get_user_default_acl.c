
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int ObjectType ;
typedef int Acl ;


 char DEFACLOBJ_FUNCTION ;
 char DEFACLOBJ_NAMESPACE ;
 char DEFACLOBJ_RELATION ;
 char DEFACLOBJ_SEQUENCE ;
 char DEFACLOBJ_TYPE ;
 int InvalidOid ;
 scalar_t__ IsBootstrapProcessingMode () ;





 int * acldefault (int,int ) ;
 scalar_t__ aclequal (int *,int *) ;
 int aclitemsort (int *) ;
 int * aclmerge (int *,int *,int ) ;
 int * get_default_acl_internal (int ,int ,char) ;

Acl *
get_user_default_acl(ObjectType objtype, Oid ownerId, Oid nsp_oid)
{
 Acl *result;
 Acl *glob_acl;
 Acl *schema_acl;
 Acl *def_acl;
 char defaclobjtype;





 if (IsBootstrapProcessingMode())
  return ((void*)0);


 switch (objtype)
 {
  case 129:
   defaclobjtype = DEFACLOBJ_RELATION;
   break;

  case 130:
   defaclobjtype = DEFACLOBJ_SEQUENCE;
   break;

  case 132:
   defaclobjtype = DEFACLOBJ_FUNCTION;
   break;

  case 128:
   defaclobjtype = DEFACLOBJ_TYPE;
   break;

  case 131:
   defaclobjtype = DEFACLOBJ_NAMESPACE;
   break;

  default:
   return ((void*)0);
 }


 glob_acl = get_default_acl_internal(ownerId, InvalidOid, defaclobjtype);
 schema_acl = get_default_acl_internal(ownerId, nsp_oid, defaclobjtype);


 if (glob_acl == ((void*)0) && schema_acl == ((void*)0))
  return ((void*)0);


 def_acl = acldefault(objtype, ownerId);


 if (glob_acl == ((void*)0))
  glob_acl = def_acl;


 result = aclmerge(glob_acl, schema_acl, ownerId);





 aclitemsort(result);
 aclitemsort(def_acl);
 if (aclequal(result, def_acl))
  result = ((void*)0);

 return result;
}
