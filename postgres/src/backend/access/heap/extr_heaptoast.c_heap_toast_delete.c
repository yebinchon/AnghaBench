
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_2__* TupleDesc ;
struct TYPE_9__ {TYPE_2__* rd_att; TYPE_1__* rd_rel; } ;
struct TYPE_8__ {int natts; } ;
struct TYPE_7__ {scalar_t__ relkind; } ;
typedef TYPE_3__* Relation ;
typedef int HeapTuple ;
typedef int Datum ;


 int Assert (int) ;
 int MaxHeapAttributeNumber ;
 scalar_t__ RELKIND_MATVIEW ;
 scalar_t__ RELKIND_RELATION ;
 int heap_deform_tuple (int ,TYPE_2__*,int *,int*) ;
 int toast_delete_external (TYPE_3__*,int *,int*,int) ;

void
heap_toast_delete(Relation rel, HeapTuple oldtup, bool is_speculative)
{
 TupleDesc tupleDesc;
 Datum toast_values[MaxHeapAttributeNumber];
 bool toast_isnull[MaxHeapAttributeNumber];





 Assert(rel->rd_rel->relkind == RELKIND_RELATION ||
     rel->rd_rel->relkind == RELKIND_MATVIEW);
 tupleDesc = rel->rd_att;

 Assert(tupleDesc->natts <= MaxHeapAttributeNumber);
 heap_deform_tuple(oldtup, tupleDesc, toast_values, toast_isnull);


 toast_delete_external(rel, toast_values, toast_isnull, is_speculative);
}
