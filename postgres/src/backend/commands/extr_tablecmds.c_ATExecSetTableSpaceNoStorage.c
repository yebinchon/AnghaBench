
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_18__ {scalar_t__ reltablespace; } ;
struct TYPE_17__ {int t_self; } ;
struct TYPE_16__ {TYPE_1__* rd_rel; } ;
struct TYPE_15__ {scalar_t__ reltablespace; int relkind; } ;
typedef TYPE_2__* Relation ;
typedef scalar_t__ Oid ;
typedef TYPE_3__* HeapTuple ;
typedef TYPE_4__* Form_pg_class ;


 int Assert (int) ;
 int CatalogTupleUpdate (TYPE_2__*,int *,TYPE_3__*) ;
 int CommandCounterIncrement () ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 scalar_t__ GETSTRUCT (TYPE_3__*) ;
 scalar_t__ GLOBALTABLESPACE_OID ;
 int HeapTupleIsValid (TYPE_3__*) ;
 scalar_t__ InvalidOid ;
 int InvokeObjectPostAlterHook (int ,scalar_t__,int ) ;
 scalar_t__ MyDatabaseTableSpace ;
 int ObjectIdGetDatum (scalar_t__) ;
 int RELKIND_HAS_STORAGE (int ) ;
 int RELOID ;
 scalar_t__ RelationGetRelid (TYPE_2__*) ;
 int RelationRelationId ;
 int RowExclusiveLock ;
 TYPE_3__* SearchSysCacheCopy1 (int ,int ) ;
 int elog (int ,char*,scalar_t__) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int heap_freetuple (TYPE_3__*) ;
 int table_close (TYPE_2__*,int ) ;
 TYPE_2__* table_open (int ,int ) ;

__attribute__((used)) static void
ATExecSetTableSpaceNoStorage(Relation rel, Oid newTableSpace)
{
 HeapTuple tuple;
 Oid oldTableSpace;
 Relation pg_class;
 Form_pg_class rd_rel;
 Oid reloid = RelationGetRelid(rel);





 Assert(!RELKIND_HAS_STORAGE(rel->rd_rel->relkind));


 if (newTableSpace == GLOBALTABLESPACE_OID)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("only shared relations can be placed in pg_global tablespace")));




 oldTableSpace = rel->rd_rel->reltablespace;
 if (newTableSpace == oldTableSpace ||
  (newTableSpace == MyDatabaseTableSpace && oldTableSpace == 0))
 {
  InvokeObjectPostAlterHook(RelationRelationId, reloid, 0);
  return;
 }


 pg_class = table_open(RelationRelationId, RowExclusiveLock);

 tuple = SearchSysCacheCopy1(RELOID, ObjectIdGetDatum(reloid));
 if (!HeapTupleIsValid(tuple))
  elog(ERROR, "cache lookup failed for relation %u", reloid);
 rd_rel = (Form_pg_class) GETSTRUCT(tuple);


 rd_rel->reltablespace = (newTableSpace == MyDatabaseTableSpace) ? InvalidOid : newTableSpace;
 CatalogTupleUpdate(pg_class, &tuple->t_self, tuple);

 InvokeObjectPostAlterHook(RelationRelationId, reloid, 0);

 heap_freetuple(tuple);

 table_close(pg_class, RowExclusiveLock);


 CommandCounterIncrement();
}
