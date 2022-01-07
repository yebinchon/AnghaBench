
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HeapTuple ;


 int heap_freetuple (int ) ;

void
SPI_freetuple(HeapTuple tuple)
{

 heap_freetuple(tuple);
}
