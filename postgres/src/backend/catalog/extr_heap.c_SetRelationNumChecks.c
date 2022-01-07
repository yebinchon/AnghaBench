
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int relchecks; } ;
struct TYPE_8__ {int t_self; } ;
typedef int Relation ;
typedef TYPE_1__* HeapTuple ;
typedef TYPE_2__* Form_pg_class ;


 int CacheInvalidateRelcache (int ) ;
 int CatalogTupleUpdate (int ,int *,TYPE_1__*) ;
 int ERROR ;
 scalar_t__ GETSTRUCT (TYPE_1__*) ;
 int HeapTupleIsValid (TYPE_1__*) ;
 int ObjectIdGetDatum (int ) ;
 int RELOID ;
 int RelationGetRelid (int ) ;
 int RelationRelationId ;
 int RowExclusiveLock ;
 TYPE_1__* SearchSysCacheCopy1 (int ,int ) ;
 int elog (int ,char*,int ) ;
 int heap_freetuple (TYPE_1__*) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

__attribute__((used)) static void
SetRelationNumChecks(Relation rel, int numchecks)
{
 Relation relrel;
 HeapTuple reltup;
 Form_pg_class relStruct;

 relrel = table_open(RelationRelationId, RowExclusiveLock);
 reltup = SearchSysCacheCopy1(RELOID,
         ObjectIdGetDatum(RelationGetRelid(rel)));
 if (!HeapTupleIsValid(reltup))
  elog(ERROR, "cache lookup failed for relation %u",
    RelationGetRelid(rel));
 relStruct = (Form_pg_class) GETSTRUCT(reltup);

 if (relStruct->relchecks != numchecks)
 {
  relStruct->relchecks = numchecks;

  CatalogTupleUpdate(relrel, &reltup->t_self, reltup);
 }
 else
 {

  CacheInvalidateRelcache(rel);
 }

 heap_freetuple(reltup);
 table_close(relrel, RowExclusiveLock);
}
