
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int values ;
typedef int nulls ;
struct TYPE_15__ {int options; int func_options; int fdwname; } ;
struct TYPE_14__ {scalar_t__ objectSubId; void* objectId; void* classId; } ;
struct TYPE_13__ {int rd_att; } ;
typedef TYPE_1__* Relation ;
typedef void* Oid ;
typedef TYPE_2__ ObjectAddress ;
typedef int HeapTuple ;
typedef int Datum ;
typedef TYPE_3__ CreateFdwStmt ;


 int Anum_pg_foreign_data_wrapper_fdwacl ;
 int Anum_pg_foreign_data_wrapper_fdwhandler ;
 int Anum_pg_foreign_data_wrapper_fdwname ;
 int Anum_pg_foreign_data_wrapper_fdwoptions ;
 int Anum_pg_foreign_data_wrapper_fdwowner ;
 int Anum_pg_foreign_data_wrapper_fdwvalidator ;
 int Anum_pg_foreign_data_wrapper_oid ;
 int CStringGetDatum (int ) ;
 int CatalogTupleInsert (TYPE_1__*,int ) ;
 int DEPENDENCY_NORMAL ;
 int DatumGetPointer (int) ;
 int DirectFunctionCall1 (int ,int ) ;
 int ERRCODE_DUPLICATE_OBJECT ;
 int ERRCODE_INSUFFICIENT_PRIVILEGE ;
 int ERROR ;
 int ForeignDataWrapperOidIndexId ;
 void* ForeignDataWrapperRelationId ;
 int * GetForeignDataWrapperByName (int ,int) ;
 void* GetNewOidWithIndex (TYPE_1__*,int ,int) ;
 void* GetUserId () ;
 int InvokeObjectPostCreateHook (void*,void*,int ) ;
 int Natts_pg_foreign_data_wrapper ;
 int ObjectIdGetDatum (void*) ;
 scalar_t__ OidIsValid (void*) ;
 int PointerGetDatum (int *) ;
 scalar_t__ PointerIsValid (int ) ;
 void* ProcedureRelationId ;
 int RowExclusiveLock ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,int ) ;
 int heap_form_tuple (int ,int*,int*) ;
 int heap_freetuple (int ) ;
 int memset (int*,int,int) ;
 int namein ;
 int parse_func_options (int ,int*,void**,int*,void**) ;
 int recordDependencyOn (TYPE_2__*,TYPE_2__*,int ) ;
 int recordDependencyOnCurrentExtension (TYPE_2__*,int) ;
 int recordDependencyOnOwner (void*,void*,void*) ;
 int superuser () ;
 int table_close (TYPE_1__*,int ) ;
 TYPE_1__* table_open (void*,int ) ;
 int transformGenericOptions (void*,int ,int ,void*) ;

ObjectAddress
CreateForeignDataWrapper(CreateFdwStmt *stmt)
{
 Relation rel;
 Datum values[Natts_pg_foreign_data_wrapper];
 bool nulls[Natts_pg_foreign_data_wrapper];
 HeapTuple tuple;
 Oid fdwId;
 bool handler_given;
 bool validator_given;
 Oid fdwhandler;
 Oid fdwvalidator;
 Datum fdwoptions;
 Oid ownerId;
 ObjectAddress myself;
 ObjectAddress referenced;

 rel = table_open(ForeignDataWrapperRelationId, RowExclusiveLock);


 if (!superuser())
  ereport(ERROR,
    (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
     errmsg("permission denied to create foreign-data wrapper \"%s\"",
      stmt->fdwname),
     errhint("Must be superuser to create a foreign-data wrapper.")));


 ownerId = GetUserId();




 if (GetForeignDataWrapperByName(stmt->fdwname, 1) != ((void*)0))
  ereport(ERROR,
    (errcode(ERRCODE_DUPLICATE_OBJECT),
     errmsg("foreign-data wrapper \"%s\" already exists",
      stmt->fdwname)));




 memset(values, 0, sizeof(values));
 memset(nulls, 0, sizeof(nulls));

 fdwId = GetNewOidWithIndex(rel, ForeignDataWrapperOidIndexId,
          Anum_pg_foreign_data_wrapper_oid);
 values[Anum_pg_foreign_data_wrapper_oid - 1] = ObjectIdGetDatum(fdwId);
 values[Anum_pg_foreign_data_wrapper_fdwname - 1] =
  DirectFunctionCall1(namein, CStringGetDatum(stmt->fdwname));
 values[Anum_pg_foreign_data_wrapper_fdwowner - 1] = ObjectIdGetDatum(ownerId);


 parse_func_options(stmt->func_options,
        &handler_given, &fdwhandler,
        &validator_given, &fdwvalidator);

 values[Anum_pg_foreign_data_wrapper_fdwhandler - 1] = ObjectIdGetDatum(fdwhandler);
 values[Anum_pg_foreign_data_wrapper_fdwvalidator - 1] = ObjectIdGetDatum(fdwvalidator);

 nulls[Anum_pg_foreign_data_wrapper_fdwacl - 1] = 1;

 fdwoptions = transformGenericOptions(ForeignDataWrapperRelationId,
           PointerGetDatum(((void*)0)),
           stmt->options,
           fdwvalidator);

 if (PointerIsValid(DatumGetPointer(fdwoptions)))
  values[Anum_pg_foreign_data_wrapper_fdwoptions - 1] = fdwoptions;
 else
  nulls[Anum_pg_foreign_data_wrapper_fdwoptions - 1] = 1;

 tuple = heap_form_tuple(rel->rd_att, values, nulls);

 CatalogTupleInsert(rel, tuple);

 heap_freetuple(tuple);


 myself.classId = ForeignDataWrapperRelationId;
 myself.objectId = fdwId;
 myself.objectSubId = 0;

 if (OidIsValid(fdwhandler))
 {
  referenced.classId = ProcedureRelationId;
  referenced.objectId = fdwhandler;
  referenced.objectSubId = 0;
  recordDependencyOn(&myself, &referenced, DEPENDENCY_NORMAL);
 }

 if (OidIsValid(fdwvalidator))
 {
  referenced.classId = ProcedureRelationId;
  referenced.objectId = fdwvalidator;
  referenced.objectSubId = 0;
  recordDependencyOn(&myself, &referenced, DEPENDENCY_NORMAL);
 }

 recordDependencyOnOwner(ForeignDataWrapperRelationId, fdwId, ownerId);


 recordDependencyOnCurrentExtension(&myself, 0);


 InvokeObjectPostCreateHook(ForeignDataWrapperRelationId, fdwId, 0);

 table_close(rel, RowExclusiveLock);

 return myself;
}
