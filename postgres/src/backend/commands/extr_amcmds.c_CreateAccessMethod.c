
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int values ;
typedef int nulls ;
struct TYPE_9__ {int amtype; int amname; int handler_name; } ;
struct TYPE_8__ {scalar_t__ objectSubId; void* objectId; int classId; } ;
typedef int Relation ;
typedef void* Oid ;
typedef TYPE_1__ ObjectAddress ;
typedef int HeapTuple ;
typedef int Datum ;
typedef TYPE_2__ CreateAmStmt ;


 int AMNAME ;
 int AccessMethodRelationId ;
 int AmOidIndexId ;
 int Anum_pg_am_amhandler ;
 int Anum_pg_am_amname ;
 int Anum_pg_am_amtype ;
 int Anum_pg_am_oid ;
 int CStringGetDatum (int ) ;
 int CatalogTupleInsert (int ,int ) ;
 int CharGetDatum (int ) ;
 int DEPENDENCY_NORMAL ;
 int DirectFunctionCall1 (int ,int ) ;
 int ERRCODE_DUPLICATE_OBJECT ;
 int ERRCODE_INSUFFICIENT_PRIVILEGE ;
 int ERROR ;
 void* GetNewOidWithIndex (int ,int ,int) ;
 void* GetSysCacheOid1 (int ,int,int ) ;
 int Natts_pg_am ;
 int ObjectIdGetDatum (void*) ;
 scalar_t__ OidIsValid (void*) ;
 int ProcedureRelationId ;
 int RelationGetDescr (int ) ;
 int RowExclusiveLock ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,int ) ;
 int heap_form_tuple (int ,int*,int*) ;
 int heap_freetuple (int ) ;
 void* lookup_am_handler_func (int ,int ) ;
 int memset (int*,int,int) ;
 int namein ;
 int recordDependencyOn (TYPE_1__*,TYPE_1__*,int ) ;
 int recordDependencyOnCurrentExtension (TYPE_1__*,int) ;
 int superuser () ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

ObjectAddress
CreateAccessMethod(CreateAmStmt *stmt)
{
 Relation rel;
 ObjectAddress myself;
 ObjectAddress referenced;
 Oid amoid;
 Oid amhandler;
 bool nulls[Natts_pg_am];
 Datum values[Natts_pg_am];
 HeapTuple tup;

 rel = table_open(AccessMethodRelationId, RowExclusiveLock);


 if (!superuser())
  ereport(ERROR,
    (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
     errmsg("permission denied to create access method \"%s\"",
      stmt->amname),
     errhint("Must be superuser to create an access method.")));


 amoid = GetSysCacheOid1(AMNAME, Anum_pg_am_oid,
       CStringGetDatum(stmt->amname));
 if (OidIsValid(amoid))
 {
  ereport(ERROR,
    (errcode(ERRCODE_DUPLICATE_OBJECT),
     errmsg("access method \"%s\" already exists",
      stmt->amname)));
 }




 amhandler = lookup_am_handler_func(stmt->handler_name, stmt->amtype);




 memset(values, 0, sizeof(values));
 memset(nulls, 0, sizeof(nulls));

 amoid = GetNewOidWithIndex(rel, AmOidIndexId, Anum_pg_am_oid);
 values[Anum_pg_am_oid - 1] = ObjectIdGetDatum(amoid);
 values[Anum_pg_am_amname - 1] =
  DirectFunctionCall1(namein, CStringGetDatum(stmt->amname));
 values[Anum_pg_am_amhandler - 1] = ObjectIdGetDatum(amhandler);
 values[Anum_pg_am_amtype - 1] = CharGetDatum(stmt->amtype);

 tup = heap_form_tuple(RelationGetDescr(rel), values, nulls);

 CatalogTupleInsert(rel, tup);
 heap_freetuple(tup);

 myself.classId = AccessMethodRelationId;
 myself.objectId = amoid;
 myself.objectSubId = 0;


 referenced.classId = ProcedureRelationId;
 referenced.objectId = amhandler;
 referenced.objectSubId = 0;

 recordDependencyOn(&myself, &referenced, DEPENDENCY_NORMAL);

 recordDependencyOnCurrentExtension(&myself, 0);

 table_close(rel, RowExclusiveLock);

 return myself;
}
