
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ objectSubId; int objectId; int classId; } ;
typedef int Oid ;
typedef TYPE_1__ ObjectAddress ;


 int NamespaceRelationId ;
 int SEPG_CLASS_DB_SCHEMA ;
 int SEPG_DB_SCHEMA__RELABELFROM ;
 int SEPG_DB_SCHEMA__RELABELTO ;
 int SEPG_DB_SCHEMA__SETATTR ;
 char* getObjectIdentity (TYPE_1__*) ;
 int pfree (char*) ;
 int sepgsql_avc_check_perms (TYPE_1__*,int ,int,char*,int) ;
 int sepgsql_avc_check_perms_label (char const*,int ,int ,char*,int) ;

void
sepgsql_schema_relabel(Oid namespaceId, const char *seclabel)
{
 ObjectAddress object;
 char *audit_name;

 object.classId = NamespaceRelationId;
 object.objectId = namespaceId;
 object.objectSubId = 0;
 audit_name = getObjectIdentity(&object);




 sepgsql_avc_check_perms(&object,
       SEPG_CLASS_DB_SCHEMA,
       SEPG_DB_SCHEMA__SETATTR |
       SEPG_DB_SCHEMA__RELABELFROM,
       audit_name,
       1);




 sepgsql_avc_check_perms_label(seclabel,
          SEPG_CLASS_DB_SCHEMA,
          SEPG_DB_SCHEMA__RELABELTO,
          audit_name,
          1);
 pfree(audit_name);
}
