
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int relispartition; } ;
struct TYPE_8__ {int t_self; } ;
typedef int Relation ;
typedef int Oid ;
typedef TYPE_1__* HeapTuple ;
typedef TYPE_2__* Form_pg_class ;


 int Assert (int) ;
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

__attribute__((used)) static void
update_relispartition(Oid relationId, bool newval)
{
 HeapTuple tup;
 Relation classRel;

 classRel = table_open(RelationRelationId, RowExclusiveLock);
 tup = SearchSysCacheCopy1(RELOID, ObjectIdGetDatum(relationId));
 if (!HeapTupleIsValid(tup))
  elog(ERROR, "cache lookup failed for relation %u", relationId);
 Assert(((Form_pg_class) GETSTRUCT(tup))->relispartition != newval);
 ((Form_pg_class) GETSTRUCT(tup))->relispartition = newval;
 CatalogTupleUpdate(classRel, &tup->t_self, tup);
 heap_freetuple(tup);
 table_close(classRel, RowExclusiveLock);
}
