
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ oid; } ;
struct TYPE_7__ {int oid; } ;
struct TYPE_6__ {int objectId; } ;
typedef scalar_t__ Oid ;
typedef TYPE_1__ ObjectAddress ;
typedef int List ;
typedef int HeapTuple ;
typedef TYPE_2__* Form_pg_default_acl ;
typedef TYPE_3__* Form_pg_authid ;


 int AUTHNAME ;
 int CStringGetDatum (char*) ;
 int CharGetDatum (char) ;





 int DEFACLROLENSPOBJ ;
 int DefaultAclRelationId ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 scalar_t__ InvalidOid ;
 int ObjectAddressSet (TYPE_1__,int ,scalar_t__) ;
 int ObjectIdGetDatum (scalar_t__) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int SearchSysCache3 (int ,int ,int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*,int const,int const,int const,int const,int const) ;
 int errmsg (char*,...) ;
 scalar_t__ get_namespace_oid (char*,int) ;
 int linitial (int *) ;
 int list_length (int *) ;
 int lsecond (int *) ;
 int lthird (int *) ;
 char* strVal (int ) ;

__attribute__((used)) static ObjectAddress
get_object_address_defacl(List *object, bool missing_ok)
{
 HeapTuple tp;
 Oid userid;
 Oid schemaid;
 char *username;
 char *schema;
 char objtype;
 char *objtype_str;
 ObjectAddress address;

 ObjectAddressSet(address, DefaultAclRelationId, InvalidOid);





 username = strVal(lsecond(object));
 if (list_length(object) >= 3)
  schema = (char *) strVal(lthird(object));
 else
  schema = ((void*)0);





 objtype = ((char *) strVal(linitial(object)))[0];
 switch (objtype)
 {
  case 130:
   objtype_str = "tables";
   break;
  case 129:
   objtype_str = "sequences";
   break;
  case 132:
   objtype_str = "functions";
   break;
  case 128:
   objtype_str = "types";
   break;
  case 131:
   objtype_str = "schemas";
   break;
  default:
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
      errmsg("unrecognized default ACL object type \"%c\"", objtype),
      errhint("Valid object types are \"%c\", \"%c\", \"%c\", \"%c\", \"%c\".",
        130,
        129,
        132,
        128,
        131)));
 }





 tp = SearchSysCache1(AUTHNAME,
       CStringGetDatum(username));
 if (!HeapTupleIsValid(tp))
  goto not_found;
 userid = ((Form_pg_authid) GETSTRUCT(tp))->oid;
 ReleaseSysCache(tp);





 if (schema)
 {
  schemaid = get_namespace_oid(schema, 1);
  if (schemaid == InvalidOid)
   goto not_found;
 }
 else
  schemaid = InvalidOid;


 tp = SearchSysCache3(DEFACLROLENSPOBJ,
       ObjectIdGetDatum(userid),
       ObjectIdGetDatum(schemaid),
       CharGetDatum(objtype));
 if (!HeapTupleIsValid(tp))
  goto not_found;

 address.objectId = ((Form_pg_default_acl) GETSTRUCT(tp))->oid;
 ReleaseSysCache(tp);

 return address;

not_found:
 if (!missing_ok)
 {
  if (schema)
   ereport(ERROR,
     (errcode(ERRCODE_UNDEFINED_OBJECT),
      errmsg("default ACL for user \"%s\" in schema \"%s\" on %s does not exist",
       username, schema, objtype_str)));
  else
   ereport(ERROR,
     (errcode(ERRCODE_UNDEFINED_OBJECT),
      errmsg("default ACL for user \"%s\" on %s does not exist",
       username, objtype_str)));
 }
 return address;
}
