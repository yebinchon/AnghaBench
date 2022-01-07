
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int ItemPointer ;
typedef int HeapTuple ;
typedef int CatalogIndexState ;


 int CatalogIndexInsert (int ,int ) ;
 int simple_heap_update (int ,int ,int ) ;

void
CatalogTupleUpdateWithInfo(Relation heapRel, ItemPointer otid, HeapTuple tup,
         CatalogIndexState indstate)
{
 simple_heap_update(heapRel, otid, tup);

 CatalogIndexInsert(indstate, tup);
}
