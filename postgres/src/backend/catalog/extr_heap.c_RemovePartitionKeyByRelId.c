
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
 int PARTRELID ;
 int PartitionedRelationId ;
 int ReleaseSysCache (TYPE_1__*) ;
 int RowExclusiveLock ;
 TYPE_1__* SearchSysCache1 (int ,int ) ;
 int elog (int ,char*,int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
RemovePartitionKeyByRelId(Oid relid)
{
 Relation rel;
 HeapTuple tuple;

 rel = table_open(PartitionedRelationId, RowExclusiveLock);

 tuple = SearchSysCache1(PARTRELID, ObjectIdGetDatum(relid));
 if (!HeapTupleIsValid(tuple))
  elog(ERROR, "cache lookup failed for partition key of relation %u",
    relid);

 CatalogTupleDelete(rel, &tuple->t_self);

 ReleaseSysCache(tuple);
 table_close(rel, RowExclusiveLock);
}
