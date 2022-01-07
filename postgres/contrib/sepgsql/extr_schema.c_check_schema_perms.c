
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_4__ {scalar_t__ objectSubId; int objectId; int classId; } ;
typedef int Oid ;
typedef TYPE_1__ ObjectAddress ;


 int NamespaceRelationId ;
 int SEPG_CLASS_DB_SCHEMA ;
 char* getObjectIdentity (TYPE_1__*) ;
 int pfree (char*) ;
 int sepgsql_avc_check_perms (TYPE_1__*,int ,int ,char*,int) ;

__attribute__((used)) static bool
check_schema_perms(Oid namespaceId, uint32 required, bool abort_on_violation)
{
 ObjectAddress object;
 char *audit_name;
 bool result;

 object.classId = NamespaceRelationId;
 object.objectId = namespaceId;
 object.objectSubId = 0;
 audit_name = getObjectIdentity(&object);

 result = sepgsql_avc_check_perms(&object,
          SEPG_CLASS_DB_SCHEMA,
          required,
          audit_name,
          abort_on_violation);
 pfree(audit_name);

 return result;
}
