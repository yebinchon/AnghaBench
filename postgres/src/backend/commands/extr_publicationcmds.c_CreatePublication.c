
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int values ;
typedef int nulls ;
struct TYPE_3__ {int for_all_tables; scalar_t__ tables; int options; int pubname; } ;
typedef int Relation ;
typedef int Oid ;
typedef int ObjectAddress ;
typedef int List ;
typedef int HeapTuple ;
typedef int Datum ;
typedef TYPE_1__ CreatePublicationStmt ;
typedef scalar_t__ AclResult ;


 scalar_t__ ACLCHECK_OK ;
 int ACL_CREATE ;
 int Anum_pg_publication_oid ;
 int Anum_pg_publication_puballtables ;
 int Anum_pg_publication_pubdelete ;
 int Anum_pg_publication_pubinsert ;
 int Anum_pg_publication_pubname ;
 int Anum_pg_publication_pubowner ;
 int Anum_pg_publication_pubtruncate ;
 int Anum_pg_publication_pubupdate ;
 int Assert (int) ;
 int BoolGetDatum (int) ;
 int CStringGetDatum (int ) ;
 int CatalogTupleInsert (int ,int ) ;
 int CloseTableList (int *) ;
 int CommandCounterIncrement () ;
 int DirectFunctionCall1 (int ,int ) ;
 int ERRCODE_DUPLICATE_OBJECT ;
 int ERRCODE_INSUFFICIENT_PRIVILEGE ;
 int ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ;
 int ERROR ;
 int GetNewOidWithIndex (int ,int ,int) ;
 int GetSysCacheOid1 (int ,int,int ) ;
 int GetUserId () ;
 int InvokeObjectPostCreateHook (int ,int ,int ) ;
 int MyDatabaseId ;
 int Natts_pg_publication ;
 int OBJECT_DATABASE ;
 int ObjectAddressSet (int ,int ,int ) ;
 int ObjectIdGetDatum (int ) ;
 scalar_t__ OidIsValid (int ) ;
 int * OpenTableList (scalar_t__) ;
 int PUBLICATIONNAME ;
 int PublicationAddTables (int ,int *,int,int *) ;
 int PublicationObjectIndexId ;
 int PublicationRelationId ;
 int RelationGetDescr (int ) ;
 int RowExclusiveLock ;
 scalar_t__ WAL_LEVEL_LOGICAL ;
 int WARNING ;
 int aclcheck_error (scalar_t__,int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,...) ;
 int get_database_name (int ) ;
 int heap_form_tuple (int ,int*,int*) ;
 int heap_freetuple (int ) ;
 scalar_t__ list_length (scalar_t__) ;
 int memset (int*,int,int) ;
 int namein ;
 int parse_publication_options (int ,int*,int*,int*,int*,int*) ;
 scalar_t__ pg_database_aclcheck (int ,int ,int ) ;
 int recordDependencyOnOwner (int ,int ,int ) ;
 int superuser () ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;
 scalar_t__ wal_level ;

ObjectAddress
CreatePublication(CreatePublicationStmt *stmt)
{
 Relation rel;
 ObjectAddress myself;
 Oid puboid;
 bool nulls[Natts_pg_publication];
 Datum values[Natts_pg_publication];
 HeapTuple tup;
 bool publish_given;
 bool publish_insert;
 bool publish_update;
 bool publish_delete;
 bool publish_truncate;
 AclResult aclresult;


 aclresult = pg_database_aclcheck(MyDatabaseId, GetUserId(), ACL_CREATE);
 if (aclresult != ACLCHECK_OK)
  aclcheck_error(aclresult, OBJECT_DATABASE,
        get_database_name(MyDatabaseId));


 if (stmt->for_all_tables && !superuser())
  ereport(ERROR,
    (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
     (errmsg("must be superuser to create FOR ALL TABLES publication"))));

 rel = table_open(PublicationRelationId, RowExclusiveLock);


 puboid = GetSysCacheOid1(PUBLICATIONNAME, Anum_pg_publication_oid,
        CStringGetDatum(stmt->pubname));
 if (OidIsValid(puboid))
 {
  ereport(ERROR,
    (errcode(ERRCODE_DUPLICATE_OBJECT),
     errmsg("publication \"%s\" already exists",
      stmt->pubname)));
 }


 memset(values, 0, sizeof(values));
 memset(nulls, 0, sizeof(nulls));

 values[Anum_pg_publication_pubname - 1] =
  DirectFunctionCall1(namein, CStringGetDatum(stmt->pubname));
 values[Anum_pg_publication_pubowner - 1] = ObjectIdGetDatum(GetUserId());

 parse_publication_options(stmt->options,
         &publish_given, &publish_insert,
         &publish_update, &publish_delete,
         &publish_truncate);

 puboid = GetNewOidWithIndex(rel, PublicationObjectIndexId,
        Anum_pg_publication_oid);
 values[Anum_pg_publication_oid - 1] = ObjectIdGetDatum(puboid);
 values[Anum_pg_publication_puballtables - 1] =
  BoolGetDatum(stmt->for_all_tables);
 values[Anum_pg_publication_pubinsert - 1] =
  BoolGetDatum(publish_insert);
 values[Anum_pg_publication_pubupdate - 1] =
  BoolGetDatum(publish_update);
 values[Anum_pg_publication_pubdelete - 1] =
  BoolGetDatum(publish_delete);
 values[Anum_pg_publication_pubtruncate - 1] =
  BoolGetDatum(publish_truncate);

 tup = heap_form_tuple(RelationGetDescr(rel), values, nulls);


 CatalogTupleInsert(rel, tup);
 heap_freetuple(tup);

 recordDependencyOnOwner(PublicationRelationId, puboid, GetUserId());

 ObjectAddressSet(myself, PublicationRelationId, puboid);


 CommandCounterIncrement();

 if (stmt->tables)
 {
  List *rels;

  Assert(list_length(stmt->tables) > 0);

  rels = OpenTableList(stmt->tables);
  PublicationAddTables(puboid, rels, 1, ((void*)0));
  CloseTableList(rels);
 }

 table_close(rel, RowExclusiveLock);

 InvokeObjectPostCreateHook(PublicationRelationId, puboid, 0);

 if (wal_level != WAL_LEVEL_LOGICAL)
 {
  ereport(WARNING,
    (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
     errmsg("wal_level is insufficient to publish logical changes"),
     errhint("Set wal_level to logical before creating subscriptions.")));
 }

 return myself;
}
