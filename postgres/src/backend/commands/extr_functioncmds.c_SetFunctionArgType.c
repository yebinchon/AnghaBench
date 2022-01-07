
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__* values; } ;
struct TYPE_10__ {int pronargs; TYPE_1__ proargtypes; } ;
struct TYPE_9__ {int t_self; } ;
typedef int Relation ;
typedef scalar_t__ Oid ;
typedef int ObjectAddress ;
typedef TYPE_2__* HeapTuple ;
typedef TYPE_3__* Form_pg_proc ;


 int CatalogTupleUpdate (int ,int *,TYPE_2__*) ;
 int DEPENDENCY_NORMAL ;
 int ERROR ;
 scalar_t__ GETSTRUCT (TYPE_2__*) ;
 int HeapTupleIsValid (TYPE_2__*) ;
 scalar_t__ OPAQUEOID ;
 int ObjectAddressSet (int ,int ,scalar_t__) ;
 int ObjectIdGetDatum (scalar_t__) ;
 int PROCOID ;
 int ProcedureRelationId ;
 int RowExclusiveLock ;
 TYPE_2__* SearchSysCacheCopy1 (int ,int ) ;
 int TypeRelationId ;
 int elog (int ,char*,scalar_t__) ;
 int recordDependencyOn (int *,int *,int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
SetFunctionArgType(Oid funcOid, int argIndex, Oid newArgType)
{
 Relation pg_proc_rel;
 HeapTuple tup;
 Form_pg_proc procForm;
 ObjectAddress func_address;
 ObjectAddress type_address;

 pg_proc_rel = table_open(ProcedureRelationId, RowExclusiveLock);

 tup = SearchSysCacheCopy1(PROCOID, ObjectIdGetDatum(funcOid));
 if (!HeapTupleIsValid(tup))
  elog(ERROR, "cache lookup failed for function %u", funcOid);
 procForm = (Form_pg_proc) GETSTRUCT(tup);

 if (argIndex < 0 || argIndex >= procForm->pronargs ||
  procForm->proargtypes.values[argIndex] != OPAQUEOID)
  elog(ERROR, "function %u doesn't take OPAQUE", funcOid);


 procForm->proargtypes.values[argIndex] = newArgType;


 CatalogTupleUpdate(pg_proc_rel, &tup->t_self, tup);

 table_close(pg_proc_rel, RowExclusiveLock);





 ObjectAddressSet(type_address, TypeRelationId, newArgType);
 ObjectAddressSet(func_address, ProcedureRelationId, funcOid);
 recordDependencyOn(&func_address, &type_address, DEPENDENCY_NORMAL);
}
