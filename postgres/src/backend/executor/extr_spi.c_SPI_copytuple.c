
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int savedcxt; } ;
typedef int MemoryContext ;
typedef int * HeapTuple ;


 int MemoryContextSwitchTo (int ) ;
 int SPI_ERROR_ARGUMENT ;
 int SPI_ERROR_UNCONNECTED ;
 int SPI_result ;
 TYPE_1__* _SPI_current ;
 int * heap_copytuple (int *) ;

HeapTuple
SPI_copytuple(HeapTuple tuple)
{
 MemoryContext oldcxt;
 HeapTuple ctuple;

 if (tuple == ((void*)0))
 {
  SPI_result = SPI_ERROR_ARGUMENT;
  return ((void*)0);
 }

 if (_SPI_current == ((void*)0))
 {
  SPI_result = SPI_ERROR_UNCONNECTED;
  return ((void*)0);
 }

 oldcxt = MemoryContextSwitchTo(_SPI_current->savedcxt);

 ctuple = heap_copytuple(tuple);

 MemoryContextSwitchTo(oldcxt);

 return ctuple;
}
