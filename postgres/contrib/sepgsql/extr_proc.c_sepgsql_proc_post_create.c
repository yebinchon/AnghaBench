
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_12__ {int * values; } ;
struct TYPE_15__ {int pronargs; scalar_t__ proleakproof; TYPE_1__ proargtypes; int proname; int pronamespace; } ;
struct TYPE_14__ {scalar_t__ objectSubId; int objectId; int classId; } ;
struct TYPE_13__ {char* data; } ;
typedef int SysScanDesc ;
typedef TYPE_2__ StringInfoData ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef TYPE_3__ ObjectAddress ;
typedef int HeapTuple ;
typedef TYPE_4__* Form_pg_proc ;


 int AccessShareLock ;
 int Anum_pg_proc_oid ;
 int BTEqualStrategyNumber ;
 int ERROR ;
 int F_OIDEQ ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int NameStr (int ) ;
 int NamespaceRelationId ;
 int ObjectIdGetDatum (int ) ;
 int ProcedureOidIndexId ;
 int ProcedureRelationId ;
 int SEPGSQL_LABEL_TAG ;
 int SEPG_CLASS_DB_PROCEDURE ;
 int SEPG_CLASS_DB_SCHEMA ;
 int SEPG_DB_PROCEDURE__CREATE ;
 int SEPG_DB_PROCEDURE__INSTALL ;
 int SEPG_DB_SCHEMA__ADD_NAME ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int SetSecurityLabel (TYPE_3__*,int ,char*) ;
 int SnapshotSelf ;
 int TypeRelationId ;
 int appendStringInfo (TYPE_2__*,char*,int ) ;
 int appendStringInfoChar (TYPE_2__*,char) ;
 int appendStringInfoString (TYPE_2__*,int ) ;
 int elog (int ,char*,int ) ;
 int getObjectIdentity (TYPE_3__*) ;
 char* get_namespace_name (int ) ;
 int initStringInfo (TYPE_2__*) ;
 int pfree (char*) ;
 int quote_qualified_identifier (char*,int ) ;
 int sepgsql_avc_check_perms (TYPE_3__*,int ,int ,int ,int) ;
 int sepgsql_avc_check_perms_label (char*,int ,int ,char*,int) ;
 char* sepgsql_compute_create (char*,char*,int ,int ) ;
 char* sepgsql_get_client_label () ;
 char* sepgsql_get_label (int ,int ,int ) ;
 int systable_beginscan (int ,int ,int,int ,int,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
sepgsql_proc_post_create(Oid functionId)
{
 Relation rel;
 ScanKeyData skey;
 SysScanDesc sscan;
 HeapTuple tuple;
 char *nsp_name;
 char *scontext;
 char *tcontext;
 char *ncontext;
 uint32 required;
 int i;
 StringInfoData audit_name;
 ObjectAddress object;
 Form_pg_proc proForm;





 rel = table_open(ProcedureRelationId, AccessShareLock);

 ScanKeyInit(&skey,
    Anum_pg_proc_oid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(functionId));

 sscan = systable_beginscan(rel, ProcedureOidIndexId, 1,
          SnapshotSelf, 1, &skey);

 tuple = systable_getnext(sscan);
 if (!HeapTupleIsValid(tuple))
  elog(ERROR, "could not find tuple for function %u", functionId);

 proForm = (Form_pg_proc) GETSTRUCT(tuple);




 object.classId = NamespaceRelationId;
 object.objectId = proForm->pronamespace;
 object.objectSubId = 0;
 sepgsql_avc_check_perms(&object,
       SEPG_CLASS_DB_SCHEMA,
       SEPG_DB_SCHEMA__ADD_NAME,
       getObjectIdentity(&object),
       1);
 scontext = sepgsql_get_client_label();
 tcontext = sepgsql_get_label(NamespaceRelationId,
         proForm->pronamespace, 0);
 ncontext = sepgsql_compute_create(scontext, tcontext,
           SEPG_CLASS_DB_PROCEDURE,
           NameStr(proForm->proname));




 initStringInfo(&audit_name);
 nsp_name = get_namespace_name(proForm->pronamespace);
 appendStringInfo(&audit_name, "%s(",
      quote_qualified_identifier(nsp_name, NameStr(proForm->proname)));
 for (i = 0; i < proForm->pronargs; i++)
 {
  if (i > 0)
   appendStringInfoChar(&audit_name, ',');

  object.classId = TypeRelationId;
  object.objectId = proForm->proargtypes.values[i];
  object.objectSubId = 0;
  appendStringInfoString(&audit_name, getObjectIdentity(&object));
 }
 appendStringInfoChar(&audit_name, ')');

 required = SEPG_DB_PROCEDURE__CREATE;
 if (proForm->proleakproof)
  required |= SEPG_DB_PROCEDURE__INSTALL;

 sepgsql_avc_check_perms_label(ncontext,
          SEPG_CLASS_DB_PROCEDURE,
          required,
          audit_name.data,
          1);




 object.classId = ProcedureRelationId;
 object.objectId = functionId;
 object.objectSubId = 0;
 SetSecurityLabel(&object, SEPGSQL_LABEL_TAG, ncontext);




 systable_endscan(sscan);
 table_close(rel, AccessShareLock);

 pfree(audit_name.data);
 pfree(tcontext);
 pfree(ncontext);
}
