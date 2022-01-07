
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int Value ;
struct TYPE_3__ {int objectSubId; void* objectId; void* classId; } ;
typedef int ObjectType ;
typedef TYPE_1__ ObjectAddress ;


 void* AccessMethodRelationId ;
 void* AuthIdRelationId ;
 void* DatabaseRelationId ;
 int ERROR ;
 void* EventTriggerRelationId ;
 void* ExtensionRelationId ;
 void* ForeignDataWrapperRelationId ;
 void* ForeignServerRelationId ;
 void* InvalidOid ;
 void* LanguageRelationId ;
 void* NamespaceRelationId ;
 void* PublicationRelationId ;
 void* SubscriptionRelationId ;
 void* TableSpaceRelationId ;
 int elog (int ,char*,int) ;
 void* get_am_oid (char const*,int) ;
 void* get_database_oid (char const*,int) ;
 void* get_event_trigger_oid (char const*,int) ;
 void* get_extension_oid (char const*,int) ;
 void* get_foreign_data_wrapper_oid (char const*,int) ;
 void* get_foreign_server_oid (char const*,int) ;
 void* get_language_oid (char const*,int) ;
 void* get_namespace_oid (char const*,int) ;
 void* get_publication_oid (char const*,int) ;
 void* get_role_oid (char const*,int) ;
 void* get_subscription_oid (char const*,int) ;
 void* get_tablespace_oid (char const*,int) ;
 char* strVal (int *) ;

__attribute__((used)) static ObjectAddress
get_object_address_unqualified(ObjectType objtype,
          Value *strval, bool missing_ok)
{
 const char *name;
 ObjectAddress address;

 name = strVal(strval);


 switch (objtype)
 {
  case 139:
   address.classId = AccessMethodRelationId;
   address.objectId = get_am_oid(name, missing_ok);
   address.objectSubId = 0;
   break;
  case 138:
   address.classId = DatabaseRelationId;
   address.objectId = get_database_oid(name, missing_ok);
   address.objectSubId = 0;
   break;
  case 136:
   address.classId = ExtensionRelationId;
   address.objectId = get_extension_oid(name, missing_ok);
   address.objectSubId = 0;
   break;
  case 128:
   address.classId = TableSpaceRelationId;
   address.objectId = get_tablespace_oid(name, missing_ok);
   address.objectSubId = 0;
   break;
  case 131:
   address.classId = AuthIdRelationId;
   address.objectId = get_role_oid(name, missing_ok);
   address.objectSubId = 0;
   break;
  case 130:
   address.classId = NamespaceRelationId;
   address.objectId = get_namespace_oid(name, missing_ok);
   address.objectSubId = 0;
   break;
  case 133:
   address.classId = LanguageRelationId;
   address.objectId = get_language_oid(name, missing_ok);
   address.objectSubId = 0;
   break;
  case 135:
   address.classId = ForeignDataWrapperRelationId;
   address.objectId = get_foreign_data_wrapper_oid(name, missing_ok);
   address.objectSubId = 0;
   break;
  case 134:
   address.classId = ForeignServerRelationId;
   address.objectId = get_foreign_server_oid(name, missing_ok);
   address.objectSubId = 0;
   break;
  case 137:
   address.classId = EventTriggerRelationId;
   address.objectId = get_event_trigger_oid(name, missing_ok);
   address.objectSubId = 0;
   break;
  case 132:
   address.classId = PublicationRelationId;
   address.objectId = get_publication_oid(name, missing_ok);
   address.objectSubId = 0;
   break;
  case 129:
   address.classId = SubscriptionRelationId;
   address.objectId = get_subscription_oid(name, missing_ok);
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
