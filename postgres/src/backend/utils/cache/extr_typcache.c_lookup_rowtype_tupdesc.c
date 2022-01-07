
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int TupleDesc ;
typedef int Oid ;


 int PinTupleDesc (int ) ;
 int lookup_rowtype_tupdesc_internal (int ,int ,int) ;

TupleDesc
lookup_rowtype_tupdesc(Oid type_id, int32 typmod)
{
 TupleDesc tupDesc;

 tupDesc = lookup_rowtype_tupdesc_internal(type_id, typmod, 0);
 PinTupleDesc(tupDesc);
 return tupDesc;
}
