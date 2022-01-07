
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int repl_val ;
typedef int repl_repl ;
typedef int repl_null ;
struct TYPE_21__ {int options; int func_options; int fdwname; } ;
struct TYPE_20__ {void* fdwvalidator; void* oid; } ;
struct TYPE_19__ {int t_self; } ;
struct TYPE_18__ {scalar_t__ objectSubId; void* objectId; void* classId; } ;
typedef int Relation ;
typedef void* Oid ;
typedef TYPE_1__ ObjectAddress ;
typedef TYPE_2__* HeapTuple ;
typedef TYPE_3__* Form_pg_foreign_data_wrapper ;
typedef int Datum ;
typedef TYPE_4__ AlterFdwStmt ;


 int Anum_pg_foreign_data_wrapper_fdwhandler ;
 int Anum_pg_foreign_data_wrapper_fdwoptions ;
 int Anum_pg_foreign_data_wrapper_fdwvalidator ;
 int CStringGetDatum (int ) ;
 int CatalogTupleUpdate (int ,int *,TYPE_2__*) ;
 int DEPENDENCY_NORMAL ;
 int DatumGetPointer (int) ;
 int ERRCODE_INSUFFICIENT_PRIVILEGE ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 int FOREIGNDATAWRAPPERNAME ;
 int FOREIGNDATAWRAPPEROID ;
 int ForeignDataWrapperRelationId ;
 scalar_t__ GETSTRUCT (TYPE_2__*) ;
 int HeapTupleIsValid (TYPE_2__*) ;
 int InvokeObjectPostAlterHook (int ,void*,int ) ;
 int Natts_pg_foreign_data_wrapper ;
 int ObjectAddressSet (TYPE_1__,int ,void*) ;
 int ObjectIdGetDatum (void*) ;
 scalar_t__ OidIsValid (void*) ;
 int PointerGetDatum (int *) ;
 scalar_t__ PointerIsValid (int ) ;
 void* ProcedureRelationId ;
 int RelationGetDescr (int ) ;
 int RowExclusiveLock ;
 TYPE_2__* SearchSysCacheCopy1 (int ,int ) ;
 int SysCacheGetAttr (int ,TYPE_2__*,int,int*) ;
 int WARNING ;
 int deleteDependencyRecordsForClass (int ,void*,void*,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,...) ;
 int heap_freetuple (TYPE_2__*) ;
 TYPE_2__* heap_modify_tuple (TYPE_2__*,int ,int*,int*,int*) ;
 int memset (int*,int,int) ;
 int parse_func_options (int ,int*,void**,int*,void**) ;
 int recordDependencyOn (TYPE_1__*,TYPE_1__*,int ) ;
 int superuser () ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;
 int transformGenericOptions (int ,int,int ,void*) ;

ObjectAddress
AlterForeignDataWrapper(AlterFdwStmt *stmt)
{
 Relation rel;
 HeapTuple tp;
 Form_pg_foreign_data_wrapper fdwForm;
 Datum repl_val[Natts_pg_foreign_data_wrapper];
 bool repl_null[Natts_pg_foreign_data_wrapper];
 bool repl_repl[Natts_pg_foreign_data_wrapper];
 Oid fdwId;
 bool isnull;
 Datum datum;
 bool handler_given;
 bool validator_given;
 Oid fdwhandler;
 Oid fdwvalidator;
 ObjectAddress myself;

 rel = table_open(ForeignDataWrapperRelationId, RowExclusiveLock);


 if (!superuser())
  ereport(ERROR,
    (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
     errmsg("permission denied to alter foreign-data wrapper \"%s\"",
      stmt->fdwname),
     errhint("Must be superuser to alter a foreign-data wrapper.")));

 tp = SearchSysCacheCopy1(FOREIGNDATAWRAPPERNAME,
        CStringGetDatum(stmt->fdwname));

 if (!HeapTupleIsValid(tp))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("foreign-data wrapper \"%s\" does not exist", stmt->fdwname)));

 fdwForm = (Form_pg_foreign_data_wrapper) GETSTRUCT(tp);
 fdwId = fdwForm->oid;

 memset(repl_val, 0, sizeof(repl_val));
 memset(repl_null, 0, sizeof(repl_null));
 memset(repl_repl, 0, sizeof(repl_repl));

 parse_func_options(stmt->func_options,
        &handler_given, &fdwhandler,
        &validator_given, &fdwvalidator);

 if (handler_given)
 {
  repl_val[Anum_pg_foreign_data_wrapper_fdwhandler - 1] = ObjectIdGetDatum(fdwhandler);
  repl_repl[Anum_pg_foreign_data_wrapper_fdwhandler - 1] = 1;





  ereport(WARNING,
    (errmsg("changing the foreign-data wrapper handler can change behavior of existing foreign tables")));
 }

 if (validator_given)
 {
  repl_val[Anum_pg_foreign_data_wrapper_fdwvalidator - 1] = ObjectIdGetDatum(fdwvalidator);
  repl_repl[Anum_pg_foreign_data_wrapper_fdwvalidator - 1] = 1;






  if (OidIsValid(fdwvalidator))
   ereport(WARNING,
     (errmsg("changing the foreign-data wrapper validator can cause "
       "the options for dependent objects to become invalid")));
 }
 else
 {



  fdwvalidator = fdwForm->fdwvalidator;
 }




 if (stmt->options)
 {

  datum = SysCacheGetAttr(FOREIGNDATAWRAPPEROID,
        tp,
        Anum_pg_foreign_data_wrapper_fdwoptions,
        &isnull);
  if (isnull)
   datum = PointerGetDatum(((void*)0));


  datum = transformGenericOptions(ForeignDataWrapperRelationId,
          datum,
          stmt->options,
          fdwvalidator);

  if (PointerIsValid(DatumGetPointer(datum)))
   repl_val[Anum_pg_foreign_data_wrapper_fdwoptions - 1] = datum;
  else
   repl_null[Anum_pg_foreign_data_wrapper_fdwoptions - 1] = 1;

  repl_repl[Anum_pg_foreign_data_wrapper_fdwoptions - 1] = 1;
 }


 tp = heap_modify_tuple(tp, RelationGetDescr(rel),
         repl_val, repl_null, repl_repl);

 CatalogTupleUpdate(rel, &tp->t_self, tp);

 heap_freetuple(tp);

 ObjectAddressSet(myself, ForeignDataWrapperRelationId, fdwId);


 if (handler_given || validator_given)
 {
  ObjectAddress referenced;





  deleteDependencyRecordsForClass(ForeignDataWrapperRelationId,
          fdwId,
          ProcedureRelationId,
          DEPENDENCY_NORMAL);



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
 }

 InvokeObjectPostAlterHook(ForeignDataWrapperRelationId, fdwId, 0);

 table_close(rel, RowExclusiveLock);

 return myself;
}
