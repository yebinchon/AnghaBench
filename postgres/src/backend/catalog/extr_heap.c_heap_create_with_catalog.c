
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int TupleDesc ;
typedef int TransactionId ;
struct TYPE_19__ {scalar_t__ objectId; scalar_t__ objectSubId; int classId; } ;
struct TYPE_18__ {int rd_att; TYPE_1__* rd_rel; } ;
struct TYPE_17__ {scalar_t__ relrewrite; } ;
typedef TYPE_2__* Relation ;
typedef scalar_t__ OnCommitAction ;
typedef scalar_t__ Oid ;
typedef TYPE_3__ ObjectAddress ;
typedef int MultiXactId ;
typedef int List ;
typedef int Datum ;
typedef int Acl ;


 int AccessMethodRelationId ;
 int AddNewAttributeTuples (scalar_t__,int ,char) ;
 int AddNewRelationTuple (TYPE_2__*,TYPE_2__*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,char,int ,int ,int ,int ) ;
 TYPE_3__ AddNewRelationType (char const*,scalar_t__,scalar_t__,char,scalar_t__,scalar_t__,scalar_t__) ;
 int Anum_pg_type_oid ;
 int Assert (int) ;
 scalar_t__ AssignTypeArrayOid () ;
 int CHKATYPE_ANYARRAY ;
 int CStringGetDatum (char const*) ;
 int CheckAttributeNamesTypes (int ,char,int ) ;
 int DEFAULT_TYPDELIM ;
 int DEPENDENCY_NORMAL ;
 int ERRCODE_DUPLICATE_OBJECT ;
 int ERRCODE_DUPLICATE_TABLE ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 int F_ARRAY_IN ;
 int F_ARRAY_OUT ;
 int F_ARRAY_RECV ;
 int F_ARRAY_SEND ;
 int F_ARRAY_TYPANALYZE ;
 scalar_t__ GLOBALTABLESPACE_OID ;
 scalar_t__ GetNewRelFileNode (scalar_t__,TYPE_2__*,char) ;
 scalar_t__ GetSysCacheOid2 (int ,int ,int ,int ) ;
 scalar_t__ InvalidOid ;
 int InvokeObjectPostCreateHookArg (int ,scalar_t__,int ,int) ;
 scalar_t__ IsBinaryUpgrade ;
 scalar_t__ IsBootstrapProcessingMode () ;
 scalar_t__ IsNormalProcessingMode () ;
 scalar_t__ IsUnderPostmaster ;
 int NamespaceRelationId ;
 int NoLock ;
 int OBJECT_SEQUENCE ;
 int OBJECT_TABLE ;
 scalar_t__ ONCOMMIT_NOOP ;
 int ObjectIdGetDatum (scalar_t__) ;
 scalar_t__ OidIsValid (scalar_t__) ;
 int PointerGetDatum (int *) ;
 char RELKIND_COMPOSITE_TYPE ;





 char RELKIND_TOASTVALUE ;

 scalar_t__ RelationGetRelid (TYPE_2__*) ;
 int RelationRelationId ;
 int RowExclusiveLock ;
 int StoreConstraints (TYPE_2__*,int *,int) ;
 int TYPCATEGORY_ARRAY ;
 int TYPENAMENSP ;
 int TYPTYPE_BASE ;
 int TypeCreate (scalar_t__,char*,scalar_t__,scalar_t__,int ,scalar_t__,int,int ,int ,int,int ,int ,int ,int ,int ,scalar_t__,scalar_t__,int ,scalar_t__,int,scalar_t__,scalar_t__,int *,int *,int,char,char,int,int ,int,scalar_t__) ;
 int TypeRelationId ;
 scalar_t__ binary_upgrade_next_heap_pg_class_oid ;
 scalar_t__ binary_upgrade_next_toast_pg_class_oid ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,...) ;
 scalar_t__ get_relname_relid (char const*,scalar_t__) ;
 int * get_user_default_acl (int ,scalar_t__,scalar_t__) ;
 TYPE_2__* heap_create (char const*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ,char,char,int,int,int,int *,int *) ;
 char* makeArrayTypeName (char const*,scalar_t__) ;
 int moveArrayTypeName (scalar_t__,char const*,scalar_t__) ;
 int pfree (char*) ;
 int recordDependencyOn (TYPE_3__*,TYPE_3__*,int ) ;
 int recordDependencyOnCurrentExtension (TYPE_3__*,int) ;
 int recordDependencyOnNewAcl (int ,scalar_t__,int ,scalar_t__,int *) ;
 int recordDependencyOnOwner (int ,scalar_t__,scalar_t__) ;
 int register_on_commit_action (scalar_t__,scalar_t__) ;
 int table_close (TYPE_2__*,int ) ;
 TYPE_2__* table_open (int ,int ) ;

Oid
heap_create_with_catalog(const char *relname,
       Oid relnamespace,
       Oid reltablespace,
       Oid relid,
       Oid reltypeid,
       Oid reloftypeid,
       Oid ownerid,
       Oid accessmtd,
       TupleDesc tupdesc,
       List *cooked_constraints,
       char relkind,
       char relpersistence,
       bool shared_relation,
       bool mapped_relation,
       OnCommitAction oncommit,
       Datum reloptions,
       bool use_user_acl,
       bool allow_system_table_mods,
       bool is_internal,
       Oid relrewrite,
       ObjectAddress *typaddress)
{
 Relation pg_class_desc;
 Relation new_rel_desc;
 Acl *relacl;
 Oid existing_relid;
 Oid old_type_oid;
 Oid new_type_oid;
 ObjectAddress new_type_addr;
 Oid new_array_oid = InvalidOid;
 TransactionId relfrozenxid;
 MultiXactId relminmxid;

 pg_class_desc = table_open(RelationRelationId, RowExclusiveLock);




 Assert(IsNormalProcessingMode() || IsBootstrapProcessingMode());






 CheckAttributeNamesTypes(tupdesc, relkind,
        allow_system_table_mods ? CHKATYPE_ANYARRAY : 0);





 existing_relid = get_relname_relid(relname, relnamespace);
 if (existing_relid != InvalidOid)
  ereport(ERROR,
    (errcode(ERRCODE_DUPLICATE_TABLE),
     errmsg("relation \"%s\" already exists", relname)));







 old_type_oid = GetSysCacheOid2(TYPENAMENSP, Anum_pg_type_oid,
           CStringGetDatum(relname),
           ObjectIdGetDatum(relnamespace));
 if (OidIsValid(old_type_oid))
 {
  if (!moveArrayTypeName(old_type_oid, relname, relnamespace))
   ereport(ERROR,
     (errcode(ERRCODE_DUPLICATE_OBJECT),
      errmsg("type \"%s\" already exists", relname),
      errhint("A relation has an associated type of the same name, "
        "so you must use a name that doesn't conflict "
        "with any existing type.")));
 }




 if (shared_relation && reltablespace != GLOBALTABLESPACE_OID)
  elog(ERROR, "shared relations must be placed in pg_global tablespace");







 if (!OidIsValid(relid))
 {

  if (IsBinaryUpgrade &&
   (relkind == 130 || relkind == 129 ||
    relkind == 128 || relkind == 132 ||
    relkind == RELKIND_COMPOSITE_TYPE || relkind == 133 ||
    relkind == 131))
  {
   if (!OidIsValid(binary_upgrade_next_heap_pg_class_oid))
    ereport(ERROR,
      (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
       errmsg("pg_class heap OID value not set when in binary upgrade mode")));

   relid = binary_upgrade_next_heap_pg_class_oid;
   binary_upgrade_next_heap_pg_class_oid = InvalidOid;
  }

  else if (IsBinaryUpgrade &&
     OidIsValid(binary_upgrade_next_toast_pg_class_oid) &&
     relkind == RELKIND_TOASTVALUE)
  {
   relid = binary_upgrade_next_toast_pg_class_oid;
   binary_upgrade_next_toast_pg_class_oid = InvalidOid;
  }
  else
   relid = GetNewRelFileNode(reltablespace, pg_class_desc,
           relpersistence);
 }




 if (use_user_acl)
 {
  switch (relkind)
  {
   case 130:
   case 128:
   case 132:
   case 133:
   case 131:
    relacl = get_user_default_acl(OBJECT_TABLE, ownerid,
             relnamespace);
    break;
   case 129:
    relacl = get_user_default_acl(OBJECT_SEQUENCE, ownerid,
             relnamespace);
    break;
   default:
    relacl = ((void*)0);
    break;
  }
 }
 else
  relacl = ((void*)0);






 new_rel_desc = heap_create(relname,
          relnamespace,
          reltablespace,
          relid,
          InvalidOid,
          accessmtd,
          tupdesc,
          relkind,
          relpersistence,
          shared_relation,
          mapped_relation,
          allow_system_table_mods,
          &relfrozenxid,
          &relminmxid);

 Assert(relid == RelationGetRelid(new_rel_desc));

 new_rel_desc->rd_rel->relrewrite = relrewrite;







 if (IsUnderPostmaster && (relkind == 130 ||
         relkind == 128 ||
         relkind == 132 ||
         relkind == 133 ||
         relkind == RELKIND_COMPOSITE_TYPE ||
         relkind == 131))
  new_array_oid = AssignTypeArrayOid();
 new_type_addr = AddNewRelationType(relname,
            relnamespace,
            relid,
            relkind,
            ownerid,
            reltypeid,
            new_array_oid);
 new_type_oid = new_type_addr.objectId;
 if (typaddress)
  *typaddress = new_type_addr;




 if (OidIsValid(new_array_oid))
 {
  char *relarrayname;

  relarrayname = makeArrayTypeName(relname, relnamespace);

  TypeCreate(new_array_oid,
       relarrayname,
       relnamespace,
       InvalidOid,
       0,
       ownerid,
       -1,
       TYPTYPE_BASE,
       TYPCATEGORY_ARRAY,
       0,
       DEFAULT_TYPDELIM,
       F_ARRAY_IN,
       F_ARRAY_OUT,
       F_ARRAY_RECV,
       F_ARRAY_SEND,
       InvalidOid,
       InvalidOid,
       F_ARRAY_TYPANALYZE,
       new_type_oid,
       1,
       InvalidOid,
       InvalidOid,
       ((void*)0),
       ((void*)0),
       0,
       'd',
       'x',
       -1,
       0,
       0,
       InvalidOid);

  pfree(relarrayname);
 }
 AddNewRelationTuple(pg_class_desc,
      new_rel_desc,
      relid,
      new_type_oid,
      reloftypeid,
      ownerid,
      relkind,
      relfrozenxid,
      relminmxid,
      PointerGetDatum(relacl),
      reloptions);




 AddNewAttributeTuples(relid, new_rel_desc->rd_att, relkind);
 if (relkind != RELKIND_COMPOSITE_TYPE &&
  relkind != RELKIND_TOASTVALUE &&
  !IsBootstrapProcessingMode())
 {
  ObjectAddress myself,
     referenced;

  myself.classId = RelationRelationId;
  myself.objectId = relid;
  myself.objectSubId = 0;

  referenced.classId = NamespaceRelationId;
  referenced.objectId = relnamespace;
  referenced.objectSubId = 0;
  recordDependencyOn(&myself, &referenced, DEPENDENCY_NORMAL);

  recordDependencyOnOwner(RelationRelationId, relid, ownerid);

  recordDependencyOnNewAcl(RelationRelationId, relid, 0, ownerid, relacl);

  recordDependencyOnCurrentExtension(&myself, 0);

  if (reloftypeid)
  {
   referenced.classId = TypeRelationId;
   referenced.objectId = reloftypeid;
   referenced.objectSubId = 0;
   recordDependencyOn(&myself, &referenced, DEPENDENCY_NORMAL);
  }
  if (relkind == 130 ||
   relkind == 132)
  {
   referenced.classId = AccessMethodRelationId;
   referenced.objectId = accessmtd;
   referenced.objectSubId = 0;
   recordDependencyOn(&myself, &referenced, DEPENDENCY_NORMAL);
  }
 }


 InvokeObjectPostCreateHookArg(RelationRelationId, relid, 0, is_internal);
 StoreConstraints(new_rel_desc, cooked_constraints, is_internal);




 if (oncommit != ONCOMMIT_NOOP)
  register_on_commit_action(relid, oncommit);





 table_close(new_rel_desc, NoLock);
 table_close(pg_class_desc, RowExclusiveLock);

 return relid;
}
