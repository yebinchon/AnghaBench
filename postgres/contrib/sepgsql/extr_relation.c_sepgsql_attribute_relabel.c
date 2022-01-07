
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int objectSubId; int objectId; int classId; } ;
typedef int Oid ;
typedef TYPE_1__ ObjectAddress ;
typedef int AttrNumber ;


 int ERRCODE_WRONG_OBJECT_TYPE ;
 int ERROR ;
 char RELKIND_PARTITIONED_TABLE ;
 char RELKIND_RELATION ;
 int RelationRelationId ;
 int SEPG_CLASS_DB_COLUMN ;
 int SEPG_DB_COLUMN__RELABELFROM ;
 int SEPG_DB_COLUMN__SETATTR ;
 int SEPG_DB_PROCEDURE__RELABELTO ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 char* getObjectIdentity (TYPE_1__*) ;
 char get_rel_relkind (int ) ;
 int pfree (char*) ;
 int sepgsql_avc_check_perms (TYPE_1__*,int ,int,char*,int) ;
 int sepgsql_avc_check_perms_label (char const*,int ,int ,char*,int) ;

void
sepgsql_attribute_relabel(Oid relOid, AttrNumber attnum,
        const char *seclabel)
{
 ObjectAddress object;
 char *audit_name;
 char relkind = get_rel_relkind(relOid);

 if (relkind != RELKIND_RELATION && relkind != RELKIND_PARTITIONED_TABLE)
  ereport(ERROR,
    (errcode(ERRCODE_WRONG_OBJECT_TYPE),
     errmsg("cannot set security label on non-regular columns")));

 object.classId = RelationRelationId;
 object.objectId = relOid;
 object.objectSubId = attnum;
 audit_name = getObjectIdentity(&object);




 sepgsql_avc_check_perms(&object,
       SEPG_CLASS_DB_COLUMN,
       SEPG_DB_COLUMN__SETATTR |
       SEPG_DB_COLUMN__RELABELFROM,
       audit_name,
       1);




 sepgsql_avc_check_perms_label(seclabel,
          SEPG_CLASS_DB_COLUMN,
          SEPG_DB_PROCEDURE__RELABELTO,
          audit_name,
          1);
 pfree(audit_name);
}
