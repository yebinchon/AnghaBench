
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ objectSubId; int objectId; int classId; } ;
typedef int Oid ;
typedef TYPE_1__ ObjectAddress ;


 int ProcedureRelationId ;
 int SEPG_CLASS_DB_PROCEDURE ;
 int SEPG_DB_PROCEDURE__EXECUTE ;
 char* getObjectIdentity (TYPE_1__*) ;
 int pfree (char*) ;
 int sepgsql_avc_check_perms (TYPE_1__*,int ,int ,char*,int) ;

void
sepgsql_proc_execute(Oid functionId)
{
 ObjectAddress object;
 char *audit_name;




 object.classId = ProcedureRelationId;
 object.objectId = functionId;
 object.objectSubId = 0;
 audit_name = getObjectIdentity(&object);
 sepgsql_avc_check_perms(&object,
       SEPG_CLASS_DB_PROCEDURE,
       SEPG_DB_PROCEDURE__EXECUTE,
       audit_name,
       1);
 pfree(audit_name);
}
