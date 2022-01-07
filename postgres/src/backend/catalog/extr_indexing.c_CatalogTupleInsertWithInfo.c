
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int HeapTuple ;
typedef int CatalogIndexState ;


 int CatalogIndexInsert (int ,int ) ;
 int simple_heap_insert (int ,int ) ;

void
CatalogTupleInsertWithInfo(Relation heapRel, HeapTuple tup,
         CatalogIndexState indstate)
{
 simple_heap_insert(heapRel, tup);

 CatalogIndexInsert(indstate, tup);
}
