
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int partdefid; } ;
struct TYPE_8__ {int t_self; } ;
typedef int Relation ;
typedef int Oid ;
typedef TYPE_1__* HeapTuple ;
typedef TYPE_2__* Form_pg_partitioned_table ;


 int CatalogTupleUpdate (int ,int *,TYPE_1__*) ;
 int ERROR ;
 scalar_t__ GETSTRUCT (TYPE_1__*) ;
 int HeapTupleIsValid (TYPE_1__*) ;
 int ObjectIdGetDatum (int ) ;
 int PARTRELID ;
 int PartitionedRelationId ;
 int RowExclusiveLock ;
 TYPE_1__* SearchSysCacheCopy1 (int ,int ) ;
 int elog (int ,char*,int ) ;
 int heap_freetuple (TYPE_1__*) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
update_default_partition_oid(Oid parentId, Oid defaultPartId)
{
 HeapTuple tuple;
 Relation pg_partitioned_table;
 Form_pg_partitioned_table part_table_form;

 pg_partitioned_table = table_open(PartitionedRelationId, RowExclusiveLock);

 tuple = SearchSysCacheCopy1(PARTRELID, ObjectIdGetDatum(parentId));

 if (!HeapTupleIsValid(tuple))
  elog(ERROR, "cache lookup failed for partition key of relation %u",
    parentId);

 part_table_form = (Form_pg_partitioned_table) GETSTRUCT(tuple);
 part_table_form->partdefid = defaultPartId;
 CatalogTupleUpdate(pg_partitioned_table, &tuple->t_self, tuple);

 heap_freetuple(tuple);
 table_close(pg_partitioned_table, RowExclusiveLock);
}
