
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_12__ {int n_members; TYPE_1__** members; } ;
struct TYPE_11__ {scalar_t__ attnum; scalar_t__ attisdropped; } ;
struct TYPE_10__ {scalar_t__ objectSubId; void* objectId; void* classId; } ;
struct TYPE_9__ {int tuple; } ;
typedef void* Oid ;
typedef TYPE_2__ ObjectAddress ;
typedef int * HeapTuple ;
typedef TYPE_3__* Form_pg_attribute ;
typedef TYPE_4__ CatCList ;


 int ATTNUM ;
 scalar_t__ GETSTRUCT (int *) ;
 void* NamespaceRelationId ;
 int ObjectIdGetDatum (void*) ;
 void* PG_TOAST_NAMESPACE ;





 void* RelationRelationId ;
 int ReleaseCatCacheList (TYPE_4__*) ;
 int SEPG_CLASS_DB_COLUMN ;
 int SEPG_CLASS_DB_SCHEMA ;
 int SEPG_CLASS_DB_SEQUENCE ;
 int SEPG_CLASS_DB_TABLE ;
 int SEPG_CLASS_DB_VIEW ;
 int SEPG_DB_COLUMN__DROP ;
 int SEPG_DB_SCHEMA__REMOVE_NAME ;
 int SEPG_DB_TABLE__DROP ;
 TYPE_4__* SearchSysCacheList1 (int ,int ) ;
 char* getObjectIdentity (TYPE_2__*) ;
 void* get_rel_namespace (void*) ;
 char get_rel_relkind (void*) ;
 int pfree (char*) ;
 int sepgsql_avc_check_perms (TYPE_2__*,int ,int ,char*,int) ;
 int sepgsql_index_modify (void*) ;

void
sepgsql_relation_drop(Oid relOid)
{
 ObjectAddress object;
 char *audit_name;
 uint16_t tclass = 0;
 char relkind = get_rel_relkind(relOid);

 switch (relkind)
 {
  case 130:
  case 131:
   tclass = SEPG_CLASS_DB_TABLE;
   break;
  case 129:
   tclass = SEPG_CLASS_DB_SEQUENCE;
   break;
  case 128:
   tclass = SEPG_CLASS_DB_VIEW;
   break;
  case 132:

   if (get_rel_namespace(relOid) == PG_TOAST_NAMESPACE)
    return;

   break;
  default:

   return;
 }




 object.classId = NamespaceRelationId;
 object.objectId = get_rel_namespace(relOid);
 object.objectSubId = 0;
 audit_name = getObjectIdentity(&object);

 sepgsql_avc_check_perms(&object,
       SEPG_CLASS_DB_SCHEMA,
       SEPG_DB_SCHEMA__REMOVE_NAME,
       audit_name,
       1);
 pfree(audit_name);


 if (relkind == 132)
 {
  sepgsql_index_modify(relOid);
  return;
 }




 object.classId = RelationRelationId;
 object.objectId = relOid;
 object.objectSubId = 0;
 audit_name = getObjectIdentity(&object);

 sepgsql_avc_check_perms(&object,
       tclass,
       SEPG_DB_TABLE__DROP,
       audit_name,
       1);
 pfree(audit_name);




 if (relkind == 130 || relkind == 131)
 {
  Form_pg_attribute attForm;
  CatCList *attrList;
  HeapTuple atttup;
  int i;

  attrList = SearchSysCacheList1(ATTNUM, ObjectIdGetDatum(relOid));
  for (i = 0; i < attrList->n_members; i++)
  {
   atttup = &attrList->members[i]->tuple;
   attForm = (Form_pg_attribute) GETSTRUCT(atttup);

   if (attForm->attisdropped)
    continue;

   object.classId = RelationRelationId;
   object.objectId = relOid;
   object.objectSubId = attForm->attnum;
   audit_name = getObjectIdentity(&object);

   sepgsql_avc_check_perms(&object,
         SEPG_CLASS_DB_COLUMN,
         SEPG_DB_COLUMN__DROP,
         audit_name,
         1);
   pfree(audit_name);
  }
  ReleaseCatCacheList(attrList);
 }
}
