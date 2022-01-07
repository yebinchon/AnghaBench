
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int values ;
typedef int nulls ;
struct TYPE_18__ {int options; int servername; } ;
struct TYPE_17__ {int fdwvalidator; } ;
struct TYPE_16__ {int serverid; int fdwid; int servername; } ;
struct TYPE_15__ {scalar_t__ objectSubId; int objectId; int classId; } ;
struct TYPE_14__ {int rd_att; } ;
typedef TYPE_1__* Relation ;
typedef int Oid ;
typedef TYPE_2__ ObjectAddress ;
typedef int HeapTuple ;
typedef TYPE_3__ ForeignServer ;
typedef TYPE_4__ ForeignDataWrapper ;
typedef int Datum ;
typedef TYPE_5__ CreateForeignTableStmt ;
typedef scalar_t__ AclResult ;


 scalar_t__ ACLCHECK_OK ;
 int ACL_USAGE ;
 int Anum_pg_foreign_table_ftoptions ;
 int Anum_pg_foreign_table_ftrelid ;
 int Anum_pg_foreign_table_ftserver ;
 int CatalogTupleInsert (TYPE_1__*,int ) ;
 int CommandCounterIncrement () ;
 int DEPENDENCY_NORMAL ;
 int DatumGetPointer (int) ;
 int ForeignServerRelationId ;
 int ForeignTableRelationId ;
 TYPE_4__* GetForeignDataWrapper (int ) ;
 TYPE_3__* GetForeignServerByName (int ,int) ;
 int GetUserId () ;
 int Natts_pg_foreign_table ;
 int OBJECT_FOREIGN_SERVER ;
 int ObjectIdGetDatum (int ) ;
 int PointerGetDatum (int *) ;
 scalar_t__ PointerIsValid (int ) ;
 int RelationRelationId ;
 int RowExclusiveLock ;
 int aclcheck_error (scalar_t__,int ,int ) ;
 int heap_form_tuple (int ,int*,int*) ;
 int heap_freetuple (int ) ;
 int memset (int*,int,int) ;
 scalar_t__ pg_foreign_server_aclcheck (int ,int ,int ) ;
 int recordDependencyOn (TYPE_2__*,TYPE_2__*,int ) ;
 int table_close (TYPE_1__*,int ) ;
 TYPE_1__* table_open (int ,int ) ;
 int transformGenericOptions (int ,int ,int ,int ) ;

void
CreateForeignTable(CreateForeignTableStmt *stmt, Oid relid)
{
 Relation ftrel;
 Datum ftoptions;
 Datum values[Natts_pg_foreign_table];
 bool nulls[Natts_pg_foreign_table];
 HeapTuple tuple;
 AclResult aclresult;
 ObjectAddress myself;
 ObjectAddress referenced;
 Oid ownerId;
 ForeignDataWrapper *fdw;
 ForeignServer *server;





 CommandCounterIncrement();

 ftrel = table_open(ForeignTableRelationId, RowExclusiveLock);




 ownerId = GetUserId();





 server = GetForeignServerByName(stmt->servername, 0);
 aclresult = pg_foreign_server_aclcheck(server->serverid, ownerId, ACL_USAGE);
 if (aclresult != ACLCHECK_OK)
  aclcheck_error(aclresult, OBJECT_FOREIGN_SERVER, server->servername);

 fdw = GetForeignDataWrapper(server->fdwid);




 memset(values, 0, sizeof(values));
 memset(nulls, 0, sizeof(nulls));

 values[Anum_pg_foreign_table_ftrelid - 1] = ObjectIdGetDatum(relid);
 values[Anum_pg_foreign_table_ftserver - 1] = ObjectIdGetDatum(server->serverid);

 ftoptions = transformGenericOptions(ForeignTableRelationId,
          PointerGetDatum(((void*)0)),
          stmt->options,
          fdw->fdwvalidator);

 if (PointerIsValid(DatumGetPointer(ftoptions)))
  values[Anum_pg_foreign_table_ftoptions - 1] = ftoptions;
 else
  nulls[Anum_pg_foreign_table_ftoptions - 1] = 1;

 tuple = heap_form_tuple(ftrel->rd_att, values, nulls);

 CatalogTupleInsert(ftrel, tuple);

 heap_freetuple(tuple);


 myself.classId = RelationRelationId;
 myself.objectId = relid;
 myself.objectSubId = 0;

 referenced.classId = ForeignServerRelationId;
 referenced.objectId = server->serverid;
 referenced.objectSubId = 0;
 recordDependencyOn(&myself, &referenced, DEPENDENCY_NORMAL);

 table_close(ftrel, RowExclusiveLock);
}
