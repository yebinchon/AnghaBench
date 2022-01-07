
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32 ;
typedef int TupleDesc ;
struct TYPE_3__ {int t_data; int t_len; } ;
typedef int SV ;
typedef int Oid ;
typedef int HeapTupleHeader ;
typedef TYPE_1__ HeapTupleData ;
typedef int Datum ;


 int DatumGetHeapTupleHeader (int ) ;
 int HeapTupleHeaderGetDatumLength (int ) ;
 int HeapTupleHeaderGetTypMod (int ) ;
 int HeapTupleHeaderGetTypeId (int ) ;
 int ReleaseTupleDesc (int ) ;
 int lookup_rowtype_tupdesc (int ,int ) ;
 int * plperl_hash_from_tuple (TYPE_1__*,int ,int) ;

__attribute__((used)) static SV *
plperl_hash_from_datum(Datum attr)
{
 HeapTupleHeader td;
 Oid tupType;
 int32 tupTypmod;
 TupleDesc tupdesc;
 HeapTupleData tmptup;
 SV *sv;

 td = DatumGetHeapTupleHeader(attr);


 tupType = HeapTupleHeaderGetTypeId(td);
 tupTypmod = HeapTupleHeaderGetTypMod(td);
 tupdesc = lookup_rowtype_tupdesc(tupType, tupTypmod);


 tmptup.t_len = HeapTupleHeaderGetDatumLength(td);
 tmptup.t_data = td;

 sv = plperl_hash_from_tuple(&tmptup, tupdesc, 1);
 ReleaseTupleDesc(tupdesc);

 return sv;
}
