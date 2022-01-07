
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_18__ {int relispopulated; } ;
struct TYPE_17__ {int t_self; } ;
struct TYPE_16__ {TYPE_1__* rd_rel; } ;
struct TYPE_15__ {scalar_t__ relkind; } ;
typedef TYPE_2__* Relation ;
typedef TYPE_3__* HeapTuple ;
typedef TYPE_4__* Form_pg_class ;


 int Assert (int) ;
 int CatalogTupleUpdate (TYPE_2__*,int *,TYPE_3__*) ;
 int CommandCounterIncrement () ;
 int ERROR ;
 scalar_t__ GETSTRUCT (TYPE_3__*) ;
 int HeapTupleIsValid (TYPE_3__*) ;
 int ObjectIdGetDatum (int ) ;
 scalar_t__ RELKIND_MATVIEW ;
 int RELOID ;
 int RelationGetRelid (TYPE_2__*) ;
 int RelationRelationId ;
 int RowExclusiveLock ;
 TYPE_3__* SearchSysCacheCopy1 (int ,int ) ;
 int elog (int ,char*,int ) ;
 int heap_freetuple (TYPE_3__*) ;
 int table_close (TYPE_2__*,int ) ;
 TYPE_2__* table_open (int ,int ) ;

void
SetMatViewPopulatedState(Relation relation, bool newstate)
{
 Relation pgrel;
 HeapTuple tuple;

 Assert(relation->rd_rel->relkind == RELKIND_MATVIEW);






 pgrel = table_open(RelationRelationId, RowExclusiveLock);
 tuple = SearchSysCacheCopy1(RELOID,
        ObjectIdGetDatum(RelationGetRelid(relation)));
 if (!HeapTupleIsValid(tuple))
  elog(ERROR, "cache lookup failed for relation %u",
    RelationGetRelid(relation));

 ((Form_pg_class) GETSTRUCT(tuple))->relispopulated = newstate;

 CatalogTupleUpdate(pgrel, &tuple->t_self, tuple);

 heap_freetuple(tuple);
 table_close(pgrel, RowExclusiveLock);





 CommandCounterIncrement();
}
