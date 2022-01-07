
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_6__ {scalar_t__ pronamespace; scalar_t__ proleakproof; int proname; } ;
struct TYPE_5__ {scalar_t__ objectSubId; int objectId; int classId; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef TYPE_1__ ObjectAddress ;
typedef int HeapTuple ;
typedef TYPE_2__* Form_pg_proc ;


 int AccessShareLock ;
 int Anum_pg_proc_oid ;
 int BTEqualStrategyNumber ;
 int ERROR ;
 int F_OIDEQ ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int NameStr (int ) ;
 int ObjectIdGetDatum (int ) ;
 int PROCOID ;
 int ProcedureOidIndexId ;
 int ProcedureRelationId ;
 int ReleaseSysCache (int ) ;
 int SEPG_CLASS_DB_PROCEDURE ;
 int SEPG_DB_PROCEDURE__INSTALL ;
 int SEPG_DB_PROCEDURE__SETATTR ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int SearchSysCache1 (int ,int ) ;
 int SnapshotSelf ;
 int elog (int ,char*,int ) ;
 char* getObjectIdentity (TYPE_1__*) ;
 int pfree (char*) ;
 int sepgsql_avc_check_perms (TYPE_1__*,int ,int ,char*,int) ;
 int sepgsql_schema_add_name (scalar_t__) ;
 int sepgsql_schema_remove_name (scalar_t__) ;
 int sepgsql_schema_rename (scalar_t__) ;
 scalar_t__ strcmp (int ,int ) ;
 int systable_beginscan (int ,int ,int,int ,int,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
sepgsql_proc_setattr(Oid functionId)
{
 Relation rel;
 ScanKeyData skey;
 SysScanDesc sscan;
 HeapTuple oldtup;
 HeapTuple newtup;
 Form_pg_proc oldform;
 Form_pg_proc newform;
 uint32 required;
 ObjectAddress object;
 char *audit_name;




 rel = table_open(ProcedureRelationId, AccessShareLock);

 ScanKeyInit(&skey,
    Anum_pg_proc_oid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(functionId));

 sscan = systable_beginscan(rel, ProcedureOidIndexId, 1,
          SnapshotSelf, 1, &skey);
 newtup = systable_getnext(sscan);
 if (!HeapTupleIsValid(newtup))
  elog(ERROR, "could not find tuple for function %u", functionId);
 newform = (Form_pg_proc) GETSTRUCT(newtup);




 oldtup = SearchSysCache1(PROCOID, ObjectIdGetDatum(functionId));
 if (!HeapTupleIsValid(oldtup))
  elog(ERROR, "cache lookup failed for function %u", functionId);
 oldform = (Form_pg_proc) GETSTRUCT(oldtup);




 if (newform->pronamespace != oldform->pronamespace)
 {
  sepgsql_schema_remove_name(oldform->pronamespace);
  sepgsql_schema_add_name(oldform->pronamespace);
 }
 if (strcmp(NameStr(newform->proname), NameStr(oldform->proname)) != 0)
  sepgsql_schema_rename(oldform->pronamespace);




 required = SEPG_DB_PROCEDURE__SETATTR;
 if (!oldform->proleakproof && newform->proleakproof)
  required |= SEPG_DB_PROCEDURE__INSTALL;

 object.classId = ProcedureRelationId;
 object.objectId = functionId;
 object.objectSubId = 0;
 audit_name = getObjectIdentity(&object);

 sepgsql_avc_check_perms(&object,
       SEPG_CLASS_DB_PROCEDURE,
       required,
       audit_name,
       1);

 pfree(audit_name);

 ReleaseSysCache(oldtup);
 systable_endscan(sscan);
 table_close(rel, AccessShareLock);
}
