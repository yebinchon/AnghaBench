
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int objectSubId; int objectId; int classId; } ;
typedef int Oid ;
typedef TYPE_1__ ObjectAddress ;
typedef int AttrNumber ;


 char RELKIND_PARTITIONED_TABLE ;
 char RELKIND_RELATION ;
 int RelationRelationId ;
 int SEPG_CLASS_DB_COLUMN ;
 int SEPG_DB_COLUMN__DROP ;
 char* getObjectIdentity (TYPE_1__*) ;
 char get_rel_relkind (int ) ;
 int pfree (char*) ;
 int sepgsql_avc_check_perms (TYPE_1__*,int ,int ,char*,int) ;

void
sepgsql_attribute_drop(Oid relOid, AttrNumber attnum)
{
 ObjectAddress object;
 char *audit_name;
 char relkind = get_rel_relkind(relOid);

 if (relkind != RELKIND_RELATION && relkind != RELKIND_PARTITIONED_TABLE)
  return;




 object.classId = RelationRelationId;
 object.objectId = relOid;
 object.objectSubId = attnum;
 audit_name = getObjectIdentity(&object);

 sepgsql_avc_check_perms(&object,
       SEPG_CLASS_DB_COLUMN,
       SEPG_DB_COLUMN__DROP,
       audit_name,
       1);
 pfree(audit_name);
}
