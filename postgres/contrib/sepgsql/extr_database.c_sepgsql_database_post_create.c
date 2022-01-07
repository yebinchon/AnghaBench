
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int datname; } ;
struct TYPE_9__ {scalar_t__ objectSubId; int objectId; void* classId; } ;
struct TYPE_8__ {int data; } ;
typedef int SysScanDesc ;
typedef TYPE_1__ StringInfoData ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef TYPE_2__ ObjectAddress ;
typedef int HeapTuple ;
typedef TYPE_3__* Form_pg_database ;


 int AccessShareLock ;
 int Anum_pg_database_oid ;
 int BTEqualStrategyNumber ;
 int DatabaseOidIndexId ;
 void* DatabaseRelationId ;
 int ERROR ;
 int F_OIDEQ ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 char const* NameStr (int ) ;
 int ObjectIdGetDatum (int ) ;
 int SEPGSQL_LABEL_TAG ;
 int SEPG_CLASS_DB_DATABASE ;
 int SEPG_DB_DATABASE__CREATE ;
 int SEPG_DB_DATABASE__GETATTR ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int SetSecurityLabel (TYPE_2__*,int ,char*) ;
 int SnapshotSelf ;
 int appendStringInfoString (TYPE_1__*,int ) ;
 int elog (int ,char*,int ) ;
 int get_database_oid (char const*,int) ;
 int initStringInfo (TYPE_1__*) ;
 int pfree (char*) ;
 int quote_identifier (char const*) ;
 int resetStringInfo (TYPE_1__*) ;
 int sepgsql_avc_check_perms_label (char*,int ,int ,int ,int) ;
 char* sepgsql_compute_create (int ,char*,int ,char const*) ;
 int sepgsql_get_client_label () ;
 char* sepgsql_get_label (void*,int ,scalar_t__) ;
 int systable_beginscan (int ,int ,int,int ,int,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (void*,int ) ;

void
sepgsql_database_post_create(Oid databaseId, const char *dtemplate)
{
 Relation rel;
 ScanKeyData skey;
 SysScanDesc sscan;
 HeapTuple tuple;
 char *tcontext;
 char *ncontext;
 ObjectAddress object;
 Form_pg_database datForm;
 StringInfoData audit_name;






 if (!dtemplate)
  dtemplate = "template1";

 object.classId = DatabaseRelationId;
 object.objectId = get_database_oid(dtemplate, 0);
 object.objectSubId = 0;

 tcontext = sepgsql_get_label(object.classId,
         object.objectId,
         object.objectSubId);




 initStringInfo(&audit_name);
 appendStringInfoString(&audit_name, quote_identifier(dtemplate));
 sepgsql_avc_check_perms_label(tcontext,
          SEPG_CLASS_DB_DATABASE,
          SEPG_DB_DATABASE__GETATTR,
          audit_name.data,
          1);
 rel = table_open(DatabaseRelationId, AccessShareLock);

 ScanKeyInit(&skey,
    Anum_pg_database_oid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(databaseId));

 sscan = systable_beginscan(rel, DatabaseOidIndexId, 1,
          SnapshotSelf, 1, &skey);
 tuple = systable_getnext(sscan);
 if (!HeapTupleIsValid(tuple))
  elog(ERROR, "could not find tuple for database %u", databaseId);

 datForm = (Form_pg_database) GETSTRUCT(tuple);

 ncontext = sepgsql_compute_create(sepgsql_get_client_label(),
           tcontext,
           SEPG_CLASS_DB_DATABASE,
           NameStr(datForm->datname));




 resetStringInfo(&audit_name);
 appendStringInfoString(&audit_name,
         quote_identifier(NameStr(datForm->datname)));
 sepgsql_avc_check_perms_label(ncontext,
          SEPG_CLASS_DB_DATABASE,
          SEPG_DB_DATABASE__CREATE,
          audit_name.data,
          1);

 systable_endscan(sscan);
 table_close(rel, AccessShareLock);




 object.classId = DatabaseRelationId;
 object.objectId = databaseId;
 object.objectSubId = 0;

 SetSecurityLabel(&object, SEPGSQL_LABEL_TAG, ncontext);

 pfree(ncontext);
 pfree(tcontext);
}
