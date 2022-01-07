
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_6__ {scalar_t__ relnamespace; int relname; } ;
struct TYPE_5__ {scalar_t__ objectSubId; int objectId; int classId; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef TYPE_1__ ObjectAddress ;
typedef int HeapTuple ;
typedef TYPE_2__* Form_pg_class ;


 int AccessShareLock ;
 int Anum_pg_class_oid ;
 int BTEqualStrategyNumber ;
 int ClassOidIndexId ;
 int ERROR ;
 int F_OIDEQ ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int NameStr (int ) ;
 int ObjectIdGetDatum (int ) ;





 int RELOID ;
 int RelationRelationId ;
 int ReleaseSysCache (int ) ;
 int SEPG_CLASS_DB_SEQUENCE ;
 int SEPG_CLASS_DB_TABLE ;
 int SEPG_CLASS_DB_VIEW ;
 int SEPG_DB_TABLE__SETATTR ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int SearchSysCache1 (int ,int ) ;
 int SnapshotSelf ;
 int elog (int ,char*,int ) ;
 char* getObjectIdentity (TYPE_1__*) ;
 int get_rel_relkind (int ) ;
 int pfree (char*) ;
 int sepgsql_avc_check_perms (TYPE_1__*,int ,int ,char*,int) ;
 int sepgsql_index_modify (int ) ;
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
sepgsql_relation_setattr(Oid relOid)
{
 Relation rel;
 ScanKeyData skey;
 SysScanDesc sscan;
 HeapTuple oldtup;
 HeapTuple newtup;
 Form_pg_class oldform;
 Form_pg_class newform;
 ObjectAddress object;
 char *audit_name;
 uint16_t tclass;

 switch (get_rel_relkind(relOid))
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
   return;
  default:

   return;
 }




 rel = table_open(RelationRelationId, AccessShareLock);

 ScanKeyInit(&skey,
    Anum_pg_class_oid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(relOid));

 sscan = systable_beginscan(rel, ClassOidIndexId, 1,
          SnapshotSelf, 1, &skey);

 newtup = systable_getnext(sscan);
 if (!HeapTupleIsValid(newtup))
  elog(ERROR, "could not find tuple for relation %u", relOid);
 newform = (Form_pg_class) GETSTRUCT(newtup);




 oldtup = SearchSysCache1(RELOID, ObjectIdGetDatum(relOid));
 if (!HeapTupleIsValid(oldtup))
  elog(ERROR, "cache lookup failed for relation %u", relOid);
 oldform = (Form_pg_class) GETSTRUCT(oldtup);




 if (newform->relnamespace != oldform->relnamespace)
 {
  sepgsql_schema_remove_name(oldform->relnamespace);
  sepgsql_schema_add_name(newform->relnamespace);
 }
 if (strcmp(NameStr(newform->relname), NameStr(oldform->relname)) != 0)
  sepgsql_schema_rename(oldform->relnamespace);
 object.classId = RelationRelationId;
 object.objectId = relOid;
 object.objectSubId = 0;
 audit_name = getObjectIdentity(&object);

 sepgsql_avc_check_perms(&object,
       tclass,
       SEPG_DB_TABLE__SETATTR,
       audit_name,
       1);
 pfree(audit_name);

 ReleaseSysCache(oldtup);
 systable_endscan(sscan);
 table_close(rel, AccessShareLock);
}
