
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TupleDesc ;
typedef int HeapTupleHeader ;
typedef int Datum ;


 int HeapTupleHeaderGetDatumLength (int ) ;
 int HeapTupleHeaderGetTypMod (int ) ;
 int HeapTupleHeaderGetTypeId (int ) ;
 int HeapTupleHeaderHasExternal (int ) ;
 int PointerGetDatum (int ) ;
 int ReleaseTupleDesc (int ) ;
 int lookup_rowtype_tupdesc (int ,int ) ;
 int toast_flatten_tuple_to_datum (int ,int ,int ) ;

Datum
HeapTupleHeaderGetDatum(HeapTupleHeader tuple)
{
 Datum result;
 TupleDesc tupDesc;


 if (!HeapTupleHeaderHasExternal(tuple))
  return PointerGetDatum(tuple);


 tupDesc = lookup_rowtype_tupdesc(HeapTupleHeaderGetTypeId(tuple),
          HeapTupleHeaderGetTypMod(tuple));


 result = toast_flatten_tuple_to_datum(tuple,
            HeapTupleHeaderGetDatumLength(tuple),
            tupDesc);

 ReleaseTupleDesc(tupDesc);

 return result;
}
