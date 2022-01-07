
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ objectSubId; int objectId; int classId; } ;
typedef int Oid ;
typedef TYPE_1__ ObjectAddress ;


 int DatabaseRelationId ;
 int SEPG_CLASS_DB_DATABASE ;
 int SEPG_DB_DATABASE__SETATTR ;
 char* getObjectIdentity (TYPE_1__*) ;
 int pfree (char*) ;
 int sepgsql_avc_check_perms (TYPE_1__*,int ,int ,char*,int) ;

void
sepgsql_database_setattr(Oid databaseId)
{
 ObjectAddress object;
 char *audit_name;




 object.classId = DatabaseRelationId;
 object.objectId = databaseId;
 object.objectSubId = 0;
 audit_name = getObjectIdentity(&object);

 sepgsql_avc_check_perms(&object,
       SEPG_CLASS_DB_DATABASE,
       SEPG_DB_DATABASE__SETATTR,
       audit_name,
       1);
 pfree(audit_name);
}
