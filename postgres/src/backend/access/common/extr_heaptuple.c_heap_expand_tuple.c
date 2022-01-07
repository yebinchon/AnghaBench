
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TupleDesc ;
typedef int HeapTuple ;


 int expand_tuple (int *,int *,int ,int ) ;

HeapTuple
heap_expand_tuple(HeapTuple sourceTuple, TupleDesc tupleDesc)
{
 HeapTuple heapTuple;

 expand_tuple(&heapTuple, ((void*)0), sourceTuple, tupleDesc);
 return heapTuple;
}
