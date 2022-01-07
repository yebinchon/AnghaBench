
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* TupleDesc ;
struct TYPE_7__ {int savedcxt; } ;
struct TYPE_6__ {scalar_t__ tdtypeid; scalar_t__ tdtypmod; } ;
typedef int MemoryContext ;
typedef int * HeapTupleHeader ;
typedef int * HeapTuple ;


 int * DatumGetHeapTupleHeader (int ) ;
 int MemoryContextSwitchTo (int ) ;
 scalar_t__ RECORDOID ;
 int SPI_ERROR_ARGUMENT ;
 int SPI_ERROR_UNCONNECTED ;
 int SPI_result ;
 TYPE_4__* _SPI_current ;
 int assign_record_type_typmod (TYPE_1__*) ;
 int heap_copy_tuple_as_datum (int *,TYPE_1__*) ;

HeapTupleHeader
SPI_returntuple(HeapTuple tuple, TupleDesc tupdesc)
{
 MemoryContext oldcxt;
 HeapTupleHeader dtup;

 if (tuple == ((void*)0) || tupdesc == ((void*)0))
 {
  SPI_result = SPI_ERROR_ARGUMENT;
  return ((void*)0);
 }

 if (_SPI_current == ((void*)0))
 {
  SPI_result = SPI_ERROR_UNCONNECTED;
  return ((void*)0);
 }


 if (tupdesc->tdtypeid == RECORDOID &&
  tupdesc->tdtypmod < 0)
  assign_record_type_typmod(tupdesc);

 oldcxt = MemoryContextSwitchTo(_SPI_current->savedcxt);

 dtup = DatumGetHeapTupleHeader(heap_copy_tuple_as_datum(tuple, tupdesc));

 MemoryContextSwitchTo(oldcxt);

 return dtup;
}
