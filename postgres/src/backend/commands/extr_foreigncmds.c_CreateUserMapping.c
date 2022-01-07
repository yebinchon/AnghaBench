
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int values ;
typedef int nulls ;
struct TYPE_23__ {int options; int servername; scalar_t__ if_not_exists; scalar_t__ user; } ;
struct TYPE_22__ {int fdwvalidator; } ;
struct TYPE_21__ {int serverid; int fdwid; } ;
struct TYPE_20__ {scalar_t__ objectSubId; int objectId; int classId; } ;
struct TYPE_19__ {int rd_att; } ;
struct TYPE_18__ {scalar_t__ roletype; } ;
typedef TYPE_1__ RoleSpec ;
typedef TYPE_2__* Relation ;
typedef int Oid ;
typedef TYPE_3__ ObjectAddress ;
typedef int HeapTuple ;
typedef TYPE_4__ ForeignServer ;
typedef TYPE_5__ ForeignDataWrapper ;
typedef int Datum ;
typedef TYPE_6__ CreateUserMappingStmt ;


 int ACL_ID_PUBLIC ;
 int Anum_pg_user_mapping_oid ;
 int Anum_pg_user_mapping_umoptions ;
 int Anum_pg_user_mapping_umserver ;
 int Anum_pg_user_mapping_umuser ;
 int CatalogTupleInsert (TYPE_2__*,int ) ;
 int DEPENDENCY_NORMAL ;
 int DatumGetPointer (int) ;
 int ERRCODE_DUPLICATE_OBJECT ;
 int ERROR ;
 int ForeignServerRelationId ;
 TYPE_5__* GetForeignDataWrapper (int ) ;
 TYPE_4__* GetForeignServerByName (int ,int) ;
 int GetNewOidWithIndex (TYPE_2__*,int ,int) ;
 int GetSysCacheOid2 (int ,int,int,int) ;
 TYPE_3__ InvalidObjectAddress ;
 int InvokeObjectPostCreateHook (int ,int ,int ) ;
 int MappingUserName (int ) ;
 int NOTICE ;
 int Natts_pg_user_mapping ;
 int ObjectIdGetDatum (int ) ;
 scalar_t__ OidIsValid (int ) ;
 int PointerGetDatum (int *) ;
 scalar_t__ PointerIsValid (int ) ;
 scalar_t__ ROLESPEC_PUBLIC ;
 int RowExclusiveLock ;
 int USERMAPPINGUSERSERVER ;
 int UserMappingOidIndexId ;
 int UserMappingRelationId ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ,int ) ;
 int get_rolespec_oid (scalar_t__,int) ;
 int heap_form_tuple (int ,int*,int*) ;
 int heap_freetuple (int ) ;
 int memset (int*,int,int) ;
 int recordDependencyOn (TYPE_3__*,TYPE_3__*,int ) ;
 int recordDependencyOnOwner (int ,int ,int ) ;
 int table_close (TYPE_2__*,int ) ;
 TYPE_2__* table_open (int ,int ) ;
 int transformGenericOptions (int ,int ,int ,int ) ;
 int user_mapping_ddl_aclcheck (int ,int ,int ) ;

ObjectAddress
CreateUserMapping(CreateUserMappingStmt *stmt)
{
 Relation rel;
 Datum useoptions;
 Datum values[Natts_pg_user_mapping];
 bool nulls[Natts_pg_user_mapping];
 HeapTuple tuple;
 Oid useId;
 Oid umId;
 ObjectAddress myself;
 ObjectAddress referenced;
 ForeignServer *srv;
 ForeignDataWrapper *fdw;
 RoleSpec *role = (RoleSpec *) stmt->user;

 rel = table_open(UserMappingRelationId, RowExclusiveLock);

 if (role->roletype == ROLESPEC_PUBLIC)
  useId = ACL_ID_PUBLIC;
 else
  useId = get_rolespec_oid(stmt->user, 0);


 srv = GetForeignServerByName(stmt->servername, 0);

 user_mapping_ddl_aclcheck(useId, srv->serverid, stmt->servername);




 umId = GetSysCacheOid2(USERMAPPINGUSERSERVER, Anum_pg_user_mapping_oid,
         ObjectIdGetDatum(useId),
         ObjectIdGetDatum(srv->serverid));

 if (OidIsValid(umId))
 {
  if (stmt->if_not_exists)
  {
   ereport(NOTICE,
     (errcode(ERRCODE_DUPLICATE_OBJECT),
      errmsg("user mapping for \"%s\" already exists for server \"%s\", skipping",
       MappingUserName(useId),
       stmt->servername)));

   table_close(rel, RowExclusiveLock);
   return InvalidObjectAddress;
  }
  else
   ereport(ERROR,
     (errcode(ERRCODE_DUPLICATE_OBJECT),
      errmsg("user mapping for \"%s\" already exists for server \"%s\"",
       MappingUserName(useId),
       stmt->servername)));
 }

 fdw = GetForeignDataWrapper(srv->fdwid);




 memset(values, 0, sizeof(values));
 memset(nulls, 0, sizeof(nulls));

 umId = GetNewOidWithIndex(rel, UserMappingOidIndexId,
         Anum_pg_user_mapping_oid);
 values[Anum_pg_user_mapping_oid - 1] = ObjectIdGetDatum(umId);
 values[Anum_pg_user_mapping_umuser - 1] = ObjectIdGetDatum(useId);
 values[Anum_pg_user_mapping_umserver - 1] = ObjectIdGetDatum(srv->serverid);


 useoptions = transformGenericOptions(UserMappingRelationId,
           PointerGetDatum(((void*)0)),
           stmt->options,
           fdw->fdwvalidator);

 if (PointerIsValid(DatumGetPointer(useoptions)))
  values[Anum_pg_user_mapping_umoptions - 1] = useoptions;
 else
  nulls[Anum_pg_user_mapping_umoptions - 1] = 1;

 tuple = heap_form_tuple(rel->rd_att, values, nulls);

 CatalogTupleInsert(rel, tuple);

 heap_freetuple(tuple);


 myself.classId = UserMappingRelationId;
 myself.objectId = umId;
 myself.objectSubId = 0;

 referenced.classId = ForeignServerRelationId;
 referenced.objectId = srv->serverid;
 referenced.objectSubId = 0;
 recordDependencyOn(&myself, &referenced, DEPENDENCY_NORMAL);

 if (OidIsValid(useId))
 {

  recordDependencyOnOwner(UserMappingRelationId, umId, useId);
 }
 InvokeObjectPostCreateHook(UserMappingRelationId, umId, 0);

 table_close(rel, RowExclusiveLock);

 return myself;
}
