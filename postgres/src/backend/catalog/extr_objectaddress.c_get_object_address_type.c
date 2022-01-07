
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int TypeName ;
typedef int Type ;
struct TYPE_5__ {scalar_t__ typtype; } ;
struct TYPE_4__ {int objectId; scalar_t__ objectSubId; int classId; } ;
typedef scalar_t__ ObjectType ;
typedef TYPE_1__ ObjectAddress ;
typedef TYPE_2__* Form_pg_type ;


 int ERRCODE_UNDEFINED_OBJECT ;
 int ERRCODE_WRONG_OBJECT_TYPE ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int InvalidOid ;
 int LookupTypeName (int *,int *,int *,int) ;
 scalar_t__ OBJECT_DOMAIN ;
 int ReleaseSysCache (int ) ;
 scalar_t__ TYPTYPE_DOMAIN ;
 int TypeNameToString (int *) ;
 int TypeRelationId ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int typeTypeId (int ) ;

__attribute__((used)) static ObjectAddress
get_object_address_type(ObjectType objtype, TypeName *typename, bool missing_ok)
{
 ObjectAddress address;
 Type tup;

 address.classId = TypeRelationId;
 address.objectId = InvalidOid;
 address.objectSubId = 0;

 tup = LookupTypeName(((void*)0), typename, ((void*)0), missing_ok);
 if (!HeapTupleIsValid(tup))
 {
  if (!missing_ok)
   ereport(ERROR,
     (errcode(ERRCODE_UNDEFINED_OBJECT),
      errmsg("type \"%s\" does not exist",
       TypeNameToString(typename))));
  return address;
 }
 address.objectId = typeTypeId(tup);

 if (objtype == OBJECT_DOMAIN)
 {
  if (((Form_pg_type) GETSTRUCT(tup))->typtype != TYPTYPE_DOMAIN)
   ereport(ERROR,
     (errcode(ERRCODE_WRONG_OBJECT_TYPE),
      errmsg("\"%s\" is not a domain",
       TypeNameToString(typename))));
 }

 ReleaseSysCache(tup);

 return address;
}
