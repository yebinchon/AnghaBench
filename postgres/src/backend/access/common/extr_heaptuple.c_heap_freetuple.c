
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HeapTuple ;


 int pfree (int ) ;

void
heap_freetuple(HeapTuple htup)
{
 pfree(htup);
}
