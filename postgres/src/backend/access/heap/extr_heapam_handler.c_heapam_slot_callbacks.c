
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TupleTableSlotOps ;
typedef int Relation ;


 int const TTSOpsBufferHeapTuple ;

__attribute__((used)) static const TupleTableSlotOps *
heapam_slot_callbacks(Relation relation)
{
 return &TTSOpsBufferHeapTuple;
}
