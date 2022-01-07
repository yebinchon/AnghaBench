
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int repl_val ;
typedef int repl_repl ;
typedef int repl_null ;
struct TYPE_20__ {scalar_t__ options; int servername; scalar_t__ user; } ;
struct TYPE_19__ {int fdwvalidator; } ;
struct TYPE_18__ {int fdwid; int serverid; } ;
struct TYPE_17__ {int t_self; } ;
struct TYPE_16__ {scalar_t__ roletype; } ;
typedef TYPE_1__ RoleSpec ;
typedef int Relation ;
typedef int Oid ;
typedef int ObjectAddress ;
typedef TYPE_2__* HeapTuple ;
typedef TYPE_3__ ForeignServer ;
typedef TYPE_4__ ForeignDataWrapper ;
typedef int Datum ;
typedef TYPE_5__ AlterUserMappingStmt ;


 int ACL_ID_PUBLIC ;
 int Anum_pg_user_mapping_oid ;
 int Anum_pg_user_mapping_umoptions ;
 int CatalogTupleUpdate (int ,int *,TYPE_2__*) ;
 int DatumGetPointer (int) ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 TYPE_4__* GetForeignDataWrapper (int ) ;
 TYPE_3__* GetForeignServerByName (int ,int) ;
 int GetSysCacheOid2 (int ,int ,int ,int ) ;
 int HeapTupleIsValid (TYPE_2__*) ;
 int MappingUserName (int ) ;
 int Natts_pg_user_mapping ;
 int ObjectAddressSet (int ,int ,int ) ;
 int ObjectIdGetDatum (int ) ;
 int OidIsValid (int ) ;
 int PointerGetDatum (int *) ;
 scalar_t__ PointerIsValid (int ) ;
 scalar_t__ ROLESPEC_PUBLIC ;
 int RelationGetDescr (int ) ;
 int RowExclusiveLock ;
 TYPE_2__* SearchSysCacheCopy1 (int ,int ) ;
 int SysCacheGetAttr (int ,TYPE_2__*,int,int*) ;
 int USERMAPPINGOID ;
 int USERMAPPINGUSERSERVER ;
 int UserMappingRelationId ;
 int elog (int ,char*,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ,int ) ;
 int get_rolespec_oid (scalar_t__,int) ;
 int heap_freetuple (TYPE_2__*) ;
 TYPE_2__* heap_modify_tuple (TYPE_2__*,int ,int*,int*,int*) ;
 int memset (int*,int,int) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;
 int transformGenericOptions (int ,int,scalar_t__,int ) ;
 int user_mapping_ddl_aclcheck (int ,int ,int ) ;

ObjectAddress
AlterUserMapping(AlterUserMappingStmt *stmt)
{
 Relation rel;
 HeapTuple tp;
 Datum repl_val[Natts_pg_user_mapping];
 bool repl_null[Natts_pg_user_mapping];
 bool repl_repl[Natts_pg_user_mapping];
 Oid useId;
 Oid umId;
 ForeignServer *srv;
 ObjectAddress address;
 RoleSpec *role = (RoleSpec *) stmt->user;

 rel = table_open(UserMappingRelationId, RowExclusiveLock);

 if (role->roletype == ROLESPEC_PUBLIC)
  useId = ACL_ID_PUBLIC;
 else
  useId = get_rolespec_oid(stmt->user, 0);

 srv = GetForeignServerByName(stmt->servername, 0);

 umId = GetSysCacheOid2(USERMAPPINGUSERSERVER, Anum_pg_user_mapping_oid,
         ObjectIdGetDatum(useId),
         ObjectIdGetDatum(srv->serverid));
 if (!OidIsValid(umId))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("user mapping for \"%s\" does not exist for server \"%s\"",
      MappingUserName(useId), stmt->servername)));

 user_mapping_ddl_aclcheck(useId, srv->serverid, stmt->servername);

 tp = SearchSysCacheCopy1(USERMAPPINGOID, ObjectIdGetDatum(umId));

 if (!HeapTupleIsValid(tp))
  elog(ERROR, "cache lookup failed for user mapping %u", umId);

 memset(repl_val, 0, sizeof(repl_val));
 memset(repl_null, 0, sizeof(repl_null));
 memset(repl_repl, 0, sizeof(repl_repl));

 if (stmt->options)
 {
  ForeignDataWrapper *fdw;
  Datum datum;
  bool isnull;





  fdw = GetForeignDataWrapper(srv->fdwid);

  datum = SysCacheGetAttr(USERMAPPINGUSERSERVER,
        tp,
        Anum_pg_user_mapping_umoptions,
        &isnull);
  if (isnull)
   datum = PointerGetDatum(((void*)0));


  datum = transformGenericOptions(UserMappingRelationId,
          datum,
          stmt->options,
          fdw->fdwvalidator);

  if (PointerIsValid(DatumGetPointer(datum)))
   repl_val[Anum_pg_user_mapping_umoptions - 1] = datum;
  else
   repl_null[Anum_pg_user_mapping_umoptions - 1] = 1;

  repl_repl[Anum_pg_user_mapping_umoptions - 1] = 1;
 }


 tp = heap_modify_tuple(tp, RelationGetDescr(rel),
         repl_val, repl_null, repl_repl);

 CatalogTupleUpdate(rel, &tp->t_self, tp);

 ObjectAddressSet(address, UserMappingRelationId, umId);

 heap_freetuple(tp);

 table_close(rel, RowExclusiveLock);

 return address;
}
