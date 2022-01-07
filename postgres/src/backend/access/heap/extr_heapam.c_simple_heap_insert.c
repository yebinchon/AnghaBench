
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int HeapTuple ;


 int GetCurrentCommandId (int) ;
 int heap_insert (int ,int ,int ,int ,int *) ;

void
simple_heap_insert(Relation relation, HeapTuple tup)
{
 heap_insert(relation, tup, GetCurrentCommandId(1), 0, ((void*)0));
}
