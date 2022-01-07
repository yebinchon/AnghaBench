
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {scalar_t__ objectSubId; int objectId; int classId; } ;
typedef int Oid ;
typedef TYPE_1__ ObjectAddress ;


 int ERRCODE_WRONG_OBJECT_TYPE ;
 int ERROR ;
 char RELKIND_PARTITIONED_TABLE ;
 char RELKIND_RELATION ;
 char RELKIND_SEQUENCE ;
 char RELKIND_VIEW ;
 int RelationRelationId ;
 int SEPG_CLASS_DB_SEQUENCE ;
 int SEPG_CLASS_DB_TABLE ;
 int SEPG_CLASS_DB_VIEW ;
 int SEPG_DB_TABLE__RELABELFROM ;
 int SEPG_DB_TABLE__RELABELTO ;
 int SEPG_DB_TABLE__SETATTR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 char* getObjectIdentity (TYPE_1__*) ;
 char get_rel_relkind (int ) ;
 int pfree (char*) ;
 int sepgsql_avc_check_perms (TYPE_1__*,int ,int,char*,int) ;
 int sepgsql_avc_check_perms_label (char const*,int ,int ,char*,int) ;

void
sepgsql_relation_relabel(Oid relOid, const char *seclabel)
{
 ObjectAddress object;
 char *audit_name;
 char relkind = get_rel_relkind(relOid);
 uint16_t tclass = 0;

 if (relkind == RELKIND_RELATION || relkind == RELKIND_PARTITIONED_TABLE)
  tclass = SEPG_CLASS_DB_TABLE;
 else if (relkind == RELKIND_SEQUENCE)
  tclass = SEPG_CLASS_DB_SEQUENCE;
 else if (relkind == RELKIND_VIEW)
  tclass = SEPG_CLASS_DB_VIEW;
 else
  ereport(ERROR,
    (errcode(ERRCODE_WRONG_OBJECT_TYPE),
     errmsg("cannot set security labels on relations except "
      "for tables, sequences or views")));

 object.classId = RelationRelationId;
 object.objectId = relOid;
 object.objectSubId = 0;
 audit_name = getObjectIdentity(&object);




 sepgsql_avc_check_perms(&object,
       tclass,
       SEPG_DB_TABLE__SETATTR |
       SEPG_DB_TABLE__RELABELFROM,
       audit_name,
       1);




 sepgsql_avc_check_perms_label(seclabel,
          tclass,
          SEPG_DB_TABLE__RELABELTO,
          audit_name,
          1);
 pfree(audit_name);
}
