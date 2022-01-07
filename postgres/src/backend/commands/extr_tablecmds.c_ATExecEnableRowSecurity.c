
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int relrowsecurity; } ;
struct TYPE_8__ {int t_self; } ;
typedef int Relation ;
typedef int Oid ;
typedef TYPE_1__* HeapTuple ;
typedef TYPE_2__* Form_pg_class ;


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
ATExecEnableRowSecurity(Relation rel)
{
 Relation pg_class;
 Oid relid;
 HeapTuple tuple;

 relid = RelationGetRelid(rel);

 pg_class = table_open(RelationRelationId, RowExclusiveLock);

 tuple = SearchSysCacheCopy1(RELOID, ObjectIdGetDatum(relid));

 if (!HeapTupleIsValid(tuple))
  elog(ERROR, "cache lookup failed for relation %u", relid);

 ((Form_pg_class) GETSTRUCT(tuple))->relrowsecurity = 1;
 CatalogTupleUpdate(pg_class, &tuple->t_self, tuple);

 table_close(pg_class, RowExclusiveLock);
 heap_freetuple(tuple);
}
