
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TupleDesc ;
typedef int SV ;
typedef int HeapTuple ;
typedef int HV ;
typedef int Datum ;


 int HeapTupleGetDatum (int ) ;
 scalar_t__ SvRV (int *) ;
 int plperl_build_tuple_result (int *,int ) ;

__attribute__((used)) static Datum
plperl_hash_to_datum(SV *src, TupleDesc td)
{
 HeapTuple tup = plperl_build_tuple_result((HV *) SvRV(src), td);

 return HeapTupleGetDatum(tup);
}
