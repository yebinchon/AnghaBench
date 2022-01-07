
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int partdefid; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_partitioned_table ;


 scalar_t__ GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int InvalidOid ;
 int ObjectIdGetDatum (int ) ;
 int PARTRELID ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;

Oid
get_default_partition_oid(Oid parentId)
{
 HeapTuple tuple;
 Oid defaultPartId = InvalidOid;

 tuple = SearchSysCache1(PARTRELID, ObjectIdGetDatum(parentId));

 if (HeapTupleIsValid(tuple))
 {
  Form_pg_partitioned_table part_table_form;

  part_table_form = (Form_pg_partitioned_table) GETSTRUCT(tuple);
  defaultPartId = part_table_form->partdefid;
  ReleaseSysCache(tuple);
 }

 return defaultPartId;
}
