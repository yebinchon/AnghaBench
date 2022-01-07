
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
 int SEPG_DB_PROCEDURE__RELABELFROM ;
 int SEPG_DB_PROCEDURE__RELABELTO ;
 int SEPG_DB_PROCEDURE__SETATTR ;
 char* getObjectIdentity (TYPE_1__*) ;
 int pfree (char*) ;
 int sepgsql_avc_check_perms (TYPE_1__*,int ,int,char*,int) ;
 int sepgsql_avc_check_perms_label (char const*,int ,int ,char*,int) ;

void
sepgsql_proc_relabel(Oid functionId, const char *seclabel)
{
 ObjectAddress object;
 char *audit_name;

 object.classId = ProcedureRelationId;
 object.objectId = functionId;
 object.objectSubId = 0;
 audit_name = getObjectIdentity(&object);




 sepgsql_avc_check_perms(&object,
       SEPG_CLASS_DB_PROCEDURE,
       SEPG_DB_PROCEDURE__SETATTR |
       SEPG_DB_PROCEDURE__RELABELFROM,
       audit_name,
       1);




 sepgsql_avc_check_perms_label(seclabel,
          SEPG_CLASS_DB_PROCEDURE,
          SEPG_DB_PROCEDURE__RELABELTO,
          audit_name,
          1);
 pfree(audit_name);
}
