
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int ItemPointer ;


 int simple_heap_delete (int ,int ) ;

void
CatalogTupleDelete(Relation heapRel, ItemPointer tid)
{
 simple_heap_delete(heapRel, tid);
}
