
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ prorettype; } ;
struct TYPE_7__ {int t_self; } ;
typedef int Relation ;
typedef scalar_t__ Oid ;
typedef int ObjectAddress ;
typedef TYPE_1__* HeapTuple ;
typedef TYPE_2__* Form_pg_proc ;


 int CatalogTupleUpdate (int ,int *,TYPE_1__*) ;
 int DEPENDENCY_NORMAL ;
 int ERROR ;
 scalar_t__ GETSTRUCT (TYPE_1__*) ;
 int HeapTupleIsValid (TYPE_1__*) ;
 scalar_t__ OPAQUEOID ;
 int ObjectAddressSet (int ,int ,scalar_t__) ;
 int ObjectIdGetDatum (scalar_t__) ;
 int PROCOID ;
 int ProcedureRelationId ;
 int RowExclusiveLock ;
 TYPE_1__* SearchSysCacheCopy1 (int ,int ) ;
 int TypeRelationId ;
 int elog (int ,char*,scalar_t__) ;
 int recordDependencyOn (int *,int *,int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
SetFunctionReturnType(Oid funcOid, Oid newRetType)
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

 if (procForm->prorettype != OPAQUEOID)
  elog(ERROR, "function %u doesn't return OPAQUE", funcOid);


 procForm->prorettype = newRetType;


 CatalogTupleUpdate(pg_proc_rel, &tup->t_self, tup);

 table_close(pg_proc_rel, RowExclusiveLock);





 ObjectAddressSet(type_address, TypeRelationId, newRetType);
 ObjectAddressSet(func_address, ProcedureRelationId, funcOid);
 recordDependencyOn(&func_address, &type_address, DEPENDENCY_NORMAL);
}
