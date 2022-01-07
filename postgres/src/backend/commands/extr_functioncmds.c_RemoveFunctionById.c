
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {char prokind; } ;
struct TYPE_7__ {int t_self; } ;
typedef int Relation ;
typedef int Oid ;
typedef TYPE_1__* HeapTuple ;
typedef TYPE_2__* Form_pg_proc ;


 int AGGFNOID ;
 int AggregateRelationId ;
 int CatalogTupleDelete (int ,int *) ;
 int ERROR ;
 scalar_t__ GETSTRUCT (TYPE_1__*) ;
 int HeapTupleIsValid (TYPE_1__*) ;
 int ObjectIdGetDatum (int ) ;
 int PROCOID ;
 char PROKIND_AGGREGATE ;
 int ProcedureRelationId ;
 int ReleaseSysCache (TYPE_1__*) ;
 int RowExclusiveLock ;
 TYPE_1__* SearchSysCache1 (int ,int ) ;
 int elog (int ,char*,int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
RemoveFunctionById(Oid funcOid)
{
 Relation relation;
 HeapTuple tup;
 char prokind;




 relation = table_open(ProcedureRelationId, RowExclusiveLock);

 tup = SearchSysCache1(PROCOID, ObjectIdGetDatum(funcOid));
 if (!HeapTupleIsValid(tup))
  elog(ERROR, "cache lookup failed for function %u", funcOid);

 prokind = ((Form_pg_proc) GETSTRUCT(tup))->prokind;

 CatalogTupleDelete(relation, &tup->t_self);

 ReleaseSysCache(tup);

 table_close(relation, RowExclusiveLock);




 if (prokind == PROKIND_AGGREGATE)
 {
  relation = table_open(AggregateRelationId, RowExclusiveLock);

  tup = SearchSysCache1(AGGFNOID, ObjectIdGetDatum(funcOid));
  if (!HeapTupleIsValid(tup))
   elog(ERROR, "cache lookup failed for pg_aggregate tuple for function %u", funcOid);

  CatalogTupleDelete(relation, &tup->t_self);

  ReleaseSysCache(tup);

  table_close(relation, RowExclusiveLock);
 }
}
