
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* TupleDesc ;
struct TYPE_8__ {int t_len; scalar_t__ t_data; } ;
struct TYPE_7__ {int tdtypmod; int tdtypeid; } ;
typedef scalar_t__ HeapTupleHeader ;
typedef TYPE_2__* HeapTuple ;
typedef int Datum ;


 scalar_t__ HeapTupleHasExternal (TYPE_2__*) ;
 int HeapTupleHeaderSetDatumLength (scalar_t__,int ) ;
 int HeapTupleHeaderSetTypMod (scalar_t__,int ) ;
 int HeapTupleHeaderSetTypeId (scalar_t__,int ) ;
 int PointerGetDatum (scalar_t__) ;
 int memcpy (char*,char*,int ) ;
 scalar_t__ palloc (int ) ;
 int toast_flatten_tuple_to_datum (scalar_t__,int ,TYPE_1__*) ;

Datum
heap_copy_tuple_as_datum(HeapTuple tuple, TupleDesc tupleDesc)
{
 HeapTupleHeader td;





 if (HeapTupleHasExternal(tuple))
  return toast_flatten_tuple_to_datum(tuple->t_data,
           tuple->t_len,
           tupleDesc);






 td = (HeapTupleHeader) palloc(tuple->t_len);
 memcpy((char *) td, (char *) tuple->t_data, tuple->t_len);

 HeapTupleHeaderSetDatumLength(td, tuple->t_len);
 HeapTupleHeaderSetTypeId(td, tupleDesc->tdtypeid);
 HeapTupleHeaderSetTypMod(td, tupleDesc->tdtypmod);

 return PointerGetDatum(td);
}
