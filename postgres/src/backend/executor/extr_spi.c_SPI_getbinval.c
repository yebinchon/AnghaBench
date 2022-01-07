
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* TupleDesc ;
struct TYPE_4__ {int natts; } ;
typedef int HeapTuple ;
typedef int Datum ;


 int FirstLowInvalidHeapAttributeNumber ;
 scalar_t__ SPI_ERROR_NOATTRIBUTE ;
 scalar_t__ SPI_result ;
 int heap_getattr (int ,int,TYPE_1__*,int*) ;

Datum
SPI_getbinval(HeapTuple tuple, TupleDesc tupdesc, int fnumber, bool *isnull)
{
 SPI_result = 0;

 if (fnumber > tupdesc->natts || fnumber == 0 ||
  fnumber <= FirstLowInvalidHeapAttributeNumber)
 {
  SPI_result = SPI_ERROR_NOATTRIBUTE;
  *isnull = 1;
  return (Datum) ((void*)0);
 }

 return heap_getattr(tuple, fnumber, tupdesc, isnull);
}
