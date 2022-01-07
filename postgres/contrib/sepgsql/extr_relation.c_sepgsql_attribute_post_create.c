
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int attname; } ;
struct TYPE_9__ {scalar_t__ objectSubId; void* objectId; void* classId; } ;
struct TYPE_8__ {int data; } ;
typedef int SysScanDesc ;
typedef TYPE_1__ StringInfoData ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef void* Oid ;
typedef TYPE_2__ ObjectAddress ;
typedef int HeapTuple ;
typedef TYPE_3__* Form_pg_attribute ;
typedef scalar_t__ AttrNumber ;


 int AccessShareLock ;
 int Anum_pg_attribute_attnum ;
 int Anum_pg_attribute_attrelid ;
 int AttributeRelationId ;
 int AttributeRelidNumIndexId ;
 int BTEqualStrategyNumber ;
 int ERROR ;
 int F_INT2EQ ;
 int F_OIDEQ ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int Int16GetDatum (scalar_t__) ;
 int NameStr (int ) ;
 int ObjectIdGetDatum (void*) ;
 char RELKIND_PARTITIONED_TABLE ;
 char RELKIND_RELATION ;
 void* RelationRelationId ;
 int SEPGSQL_LABEL_TAG ;
 int SEPG_CLASS_DB_COLUMN ;
 int SEPG_DB_COLUMN__CREATE ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int SetSecurityLabel (TYPE_2__*,int ,char*) ;
 int SnapshotSelf ;
 int appendStringInfo (TYPE_1__*,char*,int ,int ) ;
 int elog (int ,char*,scalar_t__,void*) ;
 int getObjectIdentity (TYPE_2__*) ;
 char get_rel_relkind (void*) ;
 int initStringInfo (TYPE_1__*) ;
 int pfree (char*) ;
 int quote_identifier (int ) ;
 int sepgsql_avc_check_perms_label (char*,int ,int ,int ,int) ;
 char* sepgsql_compute_create (char*,char*,int ,int ) ;
 char* sepgsql_get_client_label () ;
 char* sepgsql_get_label (void*,void*,int ) ;
 int systable_beginscan (int ,int ,int,int ,int,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
sepgsql_attribute_post_create(Oid relOid, AttrNumber attnum)
{
 Relation rel;
 ScanKeyData skey[2];
 SysScanDesc sscan;
 HeapTuple tuple;
 char *scontext;
 char *tcontext;
 char *ncontext;
 ObjectAddress object;
 Form_pg_attribute attForm;
 StringInfoData audit_name;
 char relkind = get_rel_relkind(relOid);





 if (relkind != RELKIND_RELATION && relkind != RELKIND_PARTITIONED_TABLE)
  return;





 rel = table_open(AttributeRelationId, AccessShareLock);

 ScanKeyInit(&skey[0],
    Anum_pg_attribute_attrelid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(relOid));
 ScanKeyInit(&skey[1],
    Anum_pg_attribute_attnum,
    BTEqualStrategyNumber, F_INT2EQ,
    Int16GetDatum(attnum));

 sscan = systable_beginscan(rel, AttributeRelidNumIndexId, 1,
          SnapshotSelf, 2, &skey[0]);

 tuple = systable_getnext(sscan);
 if (!HeapTupleIsValid(tuple))
  elog(ERROR, "could not find tuple for column %d of relation %u",
    attnum, relOid);

 attForm = (Form_pg_attribute) GETSTRUCT(tuple);

 scontext = sepgsql_get_client_label();
 tcontext = sepgsql_get_label(RelationRelationId, relOid, 0);
 ncontext = sepgsql_compute_create(scontext, tcontext,
           SEPG_CLASS_DB_COLUMN,
           NameStr(attForm->attname));




 object.classId = RelationRelationId;
 object.objectId = relOid;
 object.objectSubId = 0;

 initStringInfo(&audit_name);
 appendStringInfo(&audit_name, "%s.%s",
      getObjectIdentity(&object),
      quote_identifier(NameStr(attForm->attname)));
 sepgsql_avc_check_perms_label(ncontext,
          SEPG_CLASS_DB_COLUMN,
          SEPG_DB_COLUMN__CREATE,
          audit_name.data,
          1);




 object.classId = RelationRelationId;
 object.objectId = relOid;
 object.objectSubId = attnum;
 SetSecurityLabel(&object, SEPGSQL_LABEL_TAG, ncontext);

 systable_endscan(sscan);
 table_close(rel, AccessShareLock);

 pfree(tcontext);
 pfree(ncontext);
}
