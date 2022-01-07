
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct selabel_handle {int dummy; } ;
typedef int security_context_t ;
struct TYPE_14__ {int attnum; int attrelid; int attname; } ;
struct TYPE_13__ {int relnamespace; int oid; int relname; int relkind; } ;
struct TYPE_12__ {int oid; int datname; } ;
struct TYPE_11__ {int oid; int nspname; } ;
struct TYPE_10__ {int pronamespace; int oid; int proname; } ;
struct TYPE_9__ {int classId; int objectSubId; int objectId; } ;
typedef int SysScanDesc ;
typedef int Relation ;
typedef int Oid ;
typedef TYPE_1__ ObjectAddress ;
typedef int HeapTuple ;
typedef TYPE_2__* Form_pg_proc ;
typedef TYPE_3__* Form_pg_namespace ;
typedef TYPE_4__* Form_pg_database ;
typedef TYPE_5__* Form_pg_class ;
typedef TYPE_6__* Form_pg_attribute ;


 int AccessShareLock ;


 scalar_t__ ENOENT ;
 int ERRCODE_INTERNAL_ERROR ;
 int ERROR ;
 int GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int InvalidOid ;
 int MyDatabaseId ;
 char* NameStr (int ) ;

 int NoLock ;
 int PG_END_TRY () ;
 int PG_FINALLY () ;
 int PG_TRY () ;

 int RELKIND_PARTITIONED_TABLE ;
 int RELKIND_RELATION ;
 int RELKIND_SEQUENCE ;
 int RELKIND_VIEW ;

 int SELABEL_DB_COLUMN ;
 int SELABEL_DB_DATABASE ;
 int SELABEL_DB_PROCEDURE ;
 int SELABEL_DB_SCHEMA ;
 int SELABEL_DB_SEQUENCE ;
 int SELABEL_DB_TABLE ;
 int SELABEL_DB_VIEW ;
 int SEPGSQL_LABEL_TAG ;
 int SetSecurityLabel (TYPE_1__*,int ,int ) ;
 int WARNING ;
 int elog (int ,char*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char*,int) ;
 scalar_t__ errno ;
 int freecon (int ) ;
 char* get_database_name (int ) ;
 char* get_namespace_name (int) ;
 char* get_rel_name (int ) ;
 int get_rel_namespace (int ) ;
 int get_rel_relkind (int ) ;
 int pfree (char*) ;
 char* quote_object_name (char*,char*,char*,char*) ;
 scalar_t__ selabel_lookup_raw (struct selabel_handle*,int *,char*,int) ;
 int sepgsql_object_relabel (TYPE_1__*,int ) ;
 int systable_beginscan (int ,int ,int,int *,int ,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int,int ) ;

__attribute__((used)) static void
exec_object_restorecon(struct selabel_handle *sehnd, Oid catalogId)
{
 Relation rel;
 SysScanDesc sscan;
 HeapTuple tuple;
 char *database_name = get_database_name(MyDatabaseId);
 char *namespace_name;
 Oid namespace_id;
 char *relation_name;





 rel = table_open(catalogId, AccessShareLock);

 sscan = systable_beginscan(rel, InvalidOid, 0,
          ((void*)0), 0, ((void*)0));
 while (HeapTupleIsValid(tuple = systable_getnext(sscan)))
 {
  Form_pg_database datForm;
  Form_pg_namespace nspForm;
  Form_pg_class relForm;
  Form_pg_attribute attForm;
  Form_pg_proc proForm;
  char *objname;
  int objtype = 1234;
  ObjectAddress object;
  security_context_t context;





  switch (catalogId)
  {
   case 131:
    datForm = (Form_pg_database) GETSTRUCT(tuple);

    objtype = SELABEL_DB_DATABASE;

    objname = quote_object_name(NameStr(datForm->datname),
           ((void*)0), ((void*)0), ((void*)0));

    object.classId = 131;
    object.objectId = datForm->oid;
    object.objectSubId = 0;
    break;

   case 130:
    nspForm = (Form_pg_namespace) GETSTRUCT(tuple);

    objtype = SELABEL_DB_SCHEMA;

    objname = quote_object_name(database_name,
           NameStr(nspForm->nspname),
           ((void*)0), ((void*)0));

    object.classId = 130;
    object.objectId = nspForm->oid;
    object.objectSubId = 0;
    break;

   case 128:
    relForm = (Form_pg_class) GETSTRUCT(tuple);

    if (relForm->relkind == RELKIND_RELATION ||
     relForm->relkind == RELKIND_PARTITIONED_TABLE)
     objtype = SELABEL_DB_TABLE;
    else if (relForm->relkind == RELKIND_SEQUENCE)
     objtype = SELABEL_DB_SEQUENCE;
    else if (relForm->relkind == RELKIND_VIEW)
     objtype = SELABEL_DB_VIEW;
    else
     continue;

    namespace_name = get_namespace_name(relForm->relnamespace);
    objname = quote_object_name(database_name,
           namespace_name,
           NameStr(relForm->relname),
           ((void*)0));
    pfree(namespace_name);

    object.classId = 128;
    object.objectId = relForm->oid;
    object.objectSubId = 0;
    break;

   case 132:
    attForm = (Form_pg_attribute) GETSTRUCT(tuple);

    if (get_rel_relkind(attForm->attrelid) != RELKIND_RELATION &&
     get_rel_relkind(attForm->attrelid) != RELKIND_PARTITIONED_TABLE)
     continue;

    objtype = SELABEL_DB_COLUMN;

    namespace_id = get_rel_namespace(attForm->attrelid);
    namespace_name = get_namespace_name(namespace_id);
    relation_name = get_rel_name(attForm->attrelid);
    objname = quote_object_name(database_name,
           namespace_name,
           relation_name,
           NameStr(attForm->attname));
    pfree(namespace_name);
    pfree(relation_name);

    object.classId = 128;
    object.objectId = attForm->attrelid;
    object.objectSubId = attForm->attnum;
    break;

   case 129:
    proForm = (Form_pg_proc) GETSTRUCT(tuple);

    objtype = SELABEL_DB_PROCEDURE;

    namespace_name = get_namespace_name(proForm->pronamespace);
    objname = quote_object_name(database_name,
           namespace_name,
           NameStr(proForm->proname),
           ((void*)0));
    pfree(namespace_name);

    object.classId = 129;
    object.objectId = proForm->oid;
    object.objectSubId = 0;
    break;

   default:
    elog(ERROR, "unexpected catalog id: %u", catalogId);
    objname = ((void*)0);
    break;
  }

  if (selabel_lookup_raw(sehnd, &context, objname, objtype) == 0)
  {
   PG_TRY();
   {




    sepgsql_object_relabel(&object, context);

    SetSecurityLabel(&object, SEPGSQL_LABEL_TAG, context);
   }
   PG_FINALLY();
   {
    freecon(context);
   }
   PG_END_TRY();
  }
  else if (errno == ENOENT)
   ereport(WARNING,
     (errmsg("SELinux: no initial label assigned for %s (type=%d), skipping",
       objname, objtype)));
  else
   ereport(ERROR,
     (errcode(ERRCODE_INTERNAL_ERROR),
      errmsg("SELinux: could not determine initial security label for %s (type=%d): %m", objname, objtype)));

  pfree(objname);
 }
 systable_endscan(sscan);

 table_close(rel, NoLock);
}
