
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int ItemPointer ;
typedef int HeapTuple ;
typedef int CatalogIndexState ;


 int CatalogCloseIndexes (int ) ;
 int CatalogIndexInsert (int ,int ) ;
 int CatalogOpenIndexes (int ) ;
 int simple_heap_update (int ,int ,int ) ;

void
CatalogTupleUpdate(Relation heapRel, ItemPointer otid, HeapTuple tup)
{
 CatalogIndexState indstate;

 indstate = CatalogOpenIndexes(heapRel);

 simple_heap_update(heapRel, otid, tup);

 CatalogIndexInsert(indstate, tup);
 CatalogCloseIndexes(indstate);
}
