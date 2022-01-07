
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int t_self; } ;
typedef int Relation ;
typedef int Oid ;
typedef TYPE_1__* HeapTuple ;


 int CatalogTupleDelete (int ,int *) ;
 int ERROR ;
 int HeapTupleIsValid (TYPE_1__*) ;
 int ObjectIdGetDatum (int ) ;
 int RELOID ;
 int RelationRelationId ;
 int ReleaseSysCache (TYPE_1__*) ;
 int RowExclusiveLock ;
 TYPE_1__* SearchSysCache1 (int ,int ) ;
 int elog (int ,char*,int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
DeleteRelationTuple(Oid relid)
{
 Relation pg_class_desc;
 HeapTuple tup;


 pg_class_desc = table_open(RelationRelationId, RowExclusiveLock);

 tup = SearchSysCache1(RELOID, ObjectIdGetDatum(relid));
 if (!HeapTupleIsValid(tup))
  elog(ERROR, "cache lookup failed for relation %u", relid);


 CatalogTupleDelete(pg_class_desc, &tup->t_self);

 ReleaseSysCache(tup);

 table_close(pg_class_desc, RowExclusiveLock);
}
