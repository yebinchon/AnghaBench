
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int objectSubId; void* objectId; void* classId; } ;
typedef int Oid ;
typedef int ObjectType ;
typedef TYPE_1__ ObjectAddress ;
typedef int List ;


 int ERROR ;
 void* InvalidOid ;


 void* OperatorClassRelationId ;
 void* OperatorFamilyRelationId ;
 int elog (int ,char*,int) ;
 int get_index_am_oid (int ,int) ;
 void* get_opclass_oid (int ,int *,int) ;
 void* get_opfamily_oid (int ,int *,int) ;
 int linitial (int *) ;
 int * list_copy_tail (int *,int) ;
 int strVal (int ) ;

__attribute__((used)) static ObjectAddress
get_object_address_opcf(ObjectType objtype, List *object, bool missing_ok)
{
 Oid amoid;
 ObjectAddress address;


 amoid = get_index_am_oid(strVal(linitial(object)), 0);
 object = list_copy_tail(object, 1);

 switch (objtype)
 {
  case 129:
   address.classId = OperatorClassRelationId;
   address.objectId = get_opclass_oid(amoid, object, missing_ok);
   address.objectSubId = 0;
   break;
  case 128:
   address.classId = OperatorFamilyRelationId;
   address.objectId = get_opfamily_oid(amoid, object, missing_ok);
   address.objectSubId = 0;
   break;
  default:
   elog(ERROR, "unrecognized objtype: %d", (int) objtype);

   address.classId = InvalidOid;
   address.objectId = InvalidOid;
   address.objectSubId = 0;
 }

 return address;
}
