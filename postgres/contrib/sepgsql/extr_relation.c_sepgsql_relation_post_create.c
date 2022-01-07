
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_14__ {scalar_t__ attnum; int attname; } ;
struct TYPE_13__ {int relkind; scalar_t__ relnamespace; int relname; } ;
struct TYPE_12__ {scalar_t__ objectId; scalar_t__ objectSubId; void* classId; } ;
struct TYPE_11__ {int data; } ;
typedef int SysScanDesc ;
typedef TYPE_1__ StringInfoData ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef void* Oid ;
typedef TYPE_2__ ObjectAddress ;
typedef int HeapTuple ;
typedef TYPE_3__* Form_pg_class ;
typedef TYPE_4__* Form_pg_attribute ;


 int AccessShareLock ;
 int Anum_pg_attribute_attrelid ;
 int Anum_pg_class_oid ;
 void* AttributeRelationId ;
 int AttributeRelidNumIndexId ;
 int BTEqualStrategyNumber ;
 int ClassOidIndexId ;
 int ERROR ;
 int F_OIDEQ ;
 scalar_t__ GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 char* NameStr (int ) ;
 void* NamespaceRelationId ;
 int ObjectIdGetDatum (void*) ;
 scalar_t__ PG_TOAST_NAMESPACE ;





 void* RelationRelationId ;
 int SEPGSQL_LABEL_TAG ;
 int SEPG_CLASS_DB_COLUMN ;
 int SEPG_CLASS_DB_SCHEMA ;
 int SEPG_CLASS_DB_SEQUENCE ;
 int SEPG_CLASS_DB_TABLE ;
 int SEPG_CLASS_DB_VIEW ;
 int SEPG_DB_COLUMN__CREATE ;
 int SEPG_DB_DATABASE__CREATE ;
 int SEPG_DB_SCHEMA__ADD_NAME ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int SetSecurityLabel (TYPE_2__*,int ,char*) ;
 int SnapshotSelf ;
 int appendStringInfo (TYPE_1__*,char*,int ,int ,...) ;
 int elog (int ,char*,void*) ;
 int getObjectIdentity (TYPE_2__*) ;
 char* get_namespace_name (scalar_t__) ;
 int initStringInfo (TYPE_1__*) ;
 int pfree (char*) ;
 int quote_identifier (char*) ;
 int resetStringInfo (TYPE_1__*) ;
 int sepgsql_avc_check_perms (TYPE_2__*,int ,int ,int ,int) ;
 int sepgsql_avc_check_perms_label (char*,int ,int ,int ,int) ;
 char* sepgsql_compute_create (char*,char*,int ,char*) ;
 char* sepgsql_get_client_label () ;
 char* sepgsql_get_label (void*,scalar_t__,int ) ;
 int sepgsql_index_modify (void*) ;
 int systable_beginscan (int ,int ,int,int ,int,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (void*,int ) ;

void
sepgsql_relation_post_create(Oid relOid)
{
 Relation rel;
 ScanKeyData skey;
 SysScanDesc sscan;
 HeapTuple tuple;
 Form_pg_class classForm;
 ObjectAddress object;
 uint16_t tclass;
 char *scontext;
 char *tcontext;
 char *rcontext;
 char *ccontext;
 char *nsp_name;
 StringInfoData audit_name;





 rel = table_open(RelationRelationId, AccessShareLock);

 ScanKeyInit(&skey,
    Anum_pg_class_oid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(relOid));

 sscan = systable_beginscan(rel, ClassOidIndexId, 1,
          SnapshotSelf, 1, &skey);

 tuple = systable_getnext(sscan);
 if (!HeapTupleIsValid(tuple))
  elog(ERROR, "could not find tuple for relation %u", relOid);

 classForm = (Form_pg_class) GETSTRUCT(tuple);


 if (classForm->relkind == 132 &&
  classForm->relnamespace == PG_TOAST_NAMESPACE)
  goto out;




 object.classId = NamespaceRelationId;
 object.objectId = classForm->relnamespace;
 object.objectSubId = 0;
 sepgsql_avc_check_perms(&object,
       SEPG_CLASS_DB_SCHEMA,
       SEPG_DB_SCHEMA__ADD_NAME,
       getObjectIdentity(&object),
       1);

 switch (classForm->relkind)
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

   sepgsql_index_modify(relOid);
   goto out;
  default:

   goto out;
 }





 scontext = sepgsql_get_client_label();
 tcontext = sepgsql_get_label(NamespaceRelationId,
         classForm->relnamespace, 0);
 rcontext = sepgsql_compute_create(scontext, tcontext, tclass,
           NameStr(classForm->relname));




 nsp_name = get_namespace_name(classForm->relnamespace);
 initStringInfo(&audit_name);
 appendStringInfo(&audit_name, "%s.%s",
      quote_identifier(nsp_name),
      quote_identifier(NameStr(classForm->relname)));
 sepgsql_avc_check_perms_label(rcontext,
          tclass,
          SEPG_DB_DATABASE__CREATE,
          audit_name.data,
          1);





 object.classId = RelationRelationId;
 object.objectId = relOid;
 object.objectSubId = 0;
 SetSecurityLabel(&object, SEPGSQL_LABEL_TAG, rcontext);




 if (classForm->relkind == 130 ||
  classForm->relkind == 131)
 {
  Relation arel;
  ScanKeyData akey;
  SysScanDesc ascan;
  HeapTuple atup;
  Form_pg_attribute attForm;

  arel = table_open(AttributeRelationId, AccessShareLock);

  ScanKeyInit(&akey,
     Anum_pg_attribute_attrelid,
     BTEqualStrategyNumber, F_OIDEQ,
     ObjectIdGetDatum(relOid));

  ascan = systable_beginscan(arel, AttributeRelidNumIndexId, 1,
           SnapshotSelf, 1, &akey);

  while (HeapTupleIsValid(atup = systable_getnext(ascan)))
  {
   attForm = (Form_pg_attribute) GETSTRUCT(atup);

   resetStringInfo(&audit_name);
   appendStringInfo(&audit_name, "%s.%s.%s",
        quote_identifier(nsp_name),
        quote_identifier(NameStr(classForm->relname)),
        quote_identifier(NameStr(attForm->attname)));

   ccontext = sepgsql_compute_create(scontext,
             rcontext,
             SEPG_CLASS_DB_COLUMN,
             NameStr(attForm->attname));




   sepgsql_avc_check_perms_label(ccontext,
            SEPG_CLASS_DB_COLUMN,
            SEPG_DB_COLUMN__CREATE,
            audit_name.data,
            1);

   object.classId = RelationRelationId;
   object.objectId = relOid;
   object.objectSubId = attForm->attnum;
   SetSecurityLabel(&object, SEPGSQL_LABEL_TAG, ccontext);

   pfree(ccontext);
  }
  systable_endscan(ascan);
  table_close(arel, AccessShareLock);
 }
 pfree(rcontext);

out:
 systable_endscan(sscan);
 table_close(rel, AccessShareLock);
}
