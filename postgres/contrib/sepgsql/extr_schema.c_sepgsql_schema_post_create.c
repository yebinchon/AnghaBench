
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int nspname; } ;
struct TYPE_8__ {scalar_t__ objectSubId; int objectId; int classId; } ;
struct TYPE_7__ {int data; } ;
typedef int SysScanDesc ;
typedef TYPE_1__ StringInfoData ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef TYPE_2__ ObjectAddress ;
typedef int HeapTuple ;
typedef TYPE_3__* Form_pg_namespace ;


 int AccessShareLock ;
 int Anum_pg_namespace_oid ;
 int BTEqualStrategyNumber ;
 int DatabaseRelationId ;
 int ERROR ;
 int F_OIDEQ ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int MyDatabaseId ;
 char* NameStr (int ) ;
 int NamespaceOidIndexId ;
 int NamespaceRelationId ;
 int ObjectIdGetDatum (int ) ;
 int SEPGSQL_LABEL_TAG ;
 int SEPG_CLASS_DB_SCHEMA ;
 int SEPG_DB_SCHEMA__CREATE ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int SetSecurityLabel (TYPE_2__*,int ,char*) ;
 int SnapshotSelf ;
 int appendStringInfo (TYPE_1__*,char*,int ) ;
 int elog (int ,char*,int ) ;
 int initStringInfo (TYPE_1__*) ;
 int pfree (char*) ;
 int quote_identifier (char const*) ;
 int sepgsql_avc_check_perms_label (char*,int ,int ,int ,int) ;
 char* sepgsql_compute_create (int ,char*,int ,char const*) ;
 int sepgsql_get_client_label () ;
 char* sepgsql_get_label (int ,int ,int ) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 int systable_beginscan (int ,int ,int,int ,int,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
sepgsql_schema_post_create(Oid namespaceId)
{
 Relation rel;
 ScanKeyData skey;
 SysScanDesc sscan;
 HeapTuple tuple;
 char *tcontext;
 char *ncontext;
 const char *nsp_name;
 ObjectAddress object;
 Form_pg_namespace nspForm;
 StringInfoData audit_name;
 rel = table_open(NamespaceRelationId, AccessShareLock);

 ScanKeyInit(&skey,
    Anum_pg_namespace_oid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(namespaceId));

 sscan = systable_beginscan(rel, NamespaceOidIndexId, 1,
          SnapshotSelf, 1, &skey);
 tuple = systable_getnext(sscan);
 if (!HeapTupleIsValid(tuple))
  elog(ERROR, "could not find tuple for namespace %u", namespaceId);

 nspForm = (Form_pg_namespace) GETSTRUCT(tuple);
 nsp_name = NameStr(nspForm->nspname);
 if (strncmp(nsp_name, "pg_temp_", 8) == 0)
  nsp_name = "pg_temp";
 else if (strncmp(nsp_name, "pg_toast_temp_", 14) == 0)
  nsp_name = "pg_toast_temp";

 tcontext = sepgsql_get_label(DatabaseRelationId, MyDatabaseId, 0);
 ncontext = sepgsql_compute_create(sepgsql_get_client_label(),
           tcontext,
           SEPG_CLASS_DB_SCHEMA,
           nsp_name);




 initStringInfo(&audit_name);
 appendStringInfo(&audit_name, "%s", quote_identifier(nsp_name));
 sepgsql_avc_check_perms_label(ncontext,
          SEPG_CLASS_DB_SCHEMA,
          SEPG_DB_SCHEMA__CREATE,
          audit_name.data,
          1);
 systable_endscan(sscan);
 table_close(rel, AccessShareLock);




 object.classId = NamespaceRelationId;
 object.objectId = namespaceId;
 object.objectSubId = 0;
 SetSecurityLabel(&object, SEPGSQL_LABEL_TAG, ncontext);

 pfree(ncontext);
 pfree(tcontext);
}
