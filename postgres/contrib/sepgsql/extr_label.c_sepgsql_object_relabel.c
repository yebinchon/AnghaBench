
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int security_context_t ;
struct TYPE_4__ {int classId; int objectId; int objectSubId; } ;
typedef TYPE_1__ ObjectAddress ;



 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERRCODE_INVALID_NAME ;
 int ERROR ;



 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*) ;
 char const* getObjectTypeDescription (TYPE_1__ const*) ;
 scalar_t__ security_check_context_raw (int ) ;
 int sepgsql_attribute_relabel (int ,int ,char const*) ;
 int sepgsql_database_relabel (int ,char const*) ;
 int sepgsql_proc_relabel (int ,char const*) ;
 int sepgsql_relation_relabel (int ,char const*) ;
 int sepgsql_schema_relabel (int ,char const*) ;

void
sepgsql_object_relabel(const ObjectAddress *object, const char *seclabel)
{




 if (seclabel &&
  security_check_context_raw((security_context_t) seclabel) < 0)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_NAME),
     errmsg("SELinux: invalid security label: \"%s\"", seclabel)));




 switch (object->classId)
 {
  case 131:
   sepgsql_database_relabel(object->objectId, seclabel);
   break;

  case 130:
   sepgsql_schema_relabel(object->objectId, seclabel);
   break;

  case 128:
   if (object->objectSubId == 0)
    sepgsql_relation_relabel(object->objectId,
           seclabel);
   else
    sepgsql_attribute_relabel(object->objectId,
            object->objectSubId,
            seclabel);
   break;

  case 129:
   sepgsql_proc_relabel(object->objectId, seclabel);
   break;

  default:
   ereport(ERROR,
     (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("sepgsql provider does not support labels on %s",
       getObjectTypeDescription(object))));
   break;
 }
}
