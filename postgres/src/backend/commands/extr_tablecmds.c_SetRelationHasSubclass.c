
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int relhassubclass; } ;
struct TYPE_9__ {int t_self; } ;
typedef int Relation ;
typedef int Oid ;
typedef TYPE_1__* HeapTuple ;
typedef TYPE_2__* Form_pg_class ;


 int CacheInvalidateRelcacheByTuple (TYPE_1__*) ;
 int CatalogTupleUpdate (int ,int *,TYPE_1__*) ;
 int ERROR ;
 scalar_t__ GETSTRUCT (TYPE_1__*) ;
 int HeapTupleIsValid (TYPE_1__*) ;
 int ObjectIdGetDatum (int ) ;
 int RELOID ;
 int RelationRelationId ;
 int RowExclusiveLock ;
 TYPE_1__* SearchSysCacheCopy1 (int ,int ) ;
 int elog (int ,char*,int ) ;
 int heap_freetuple (TYPE_1__*) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
SetRelationHasSubclass(Oid relationId, bool relhassubclass)
{
 Relation relationRelation;
 HeapTuple tuple;
 Form_pg_class classtuple;




 relationRelation = table_open(RelationRelationId, RowExclusiveLock);
 tuple = SearchSysCacheCopy1(RELOID, ObjectIdGetDatum(relationId));
 if (!HeapTupleIsValid(tuple))
  elog(ERROR, "cache lookup failed for relation %u", relationId);
 classtuple = (Form_pg_class) GETSTRUCT(tuple);

 if (classtuple->relhassubclass != relhassubclass)
 {
  classtuple->relhassubclass = relhassubclass;
  CatalogTupleUpdate(relationRelation, &tuple->t_self, tuple);
 }
 else
 {

  CacheInvalidateRelcacheByTuple(tuple);
 }

 heap_freetuple(tuple);
 table_close(relationRelation, RowExclusiveLock);
}
