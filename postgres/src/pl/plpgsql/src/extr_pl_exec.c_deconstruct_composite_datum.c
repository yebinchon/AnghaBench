
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32 ;
typedef int TupleDesc ;
struct TYPE_3__ {int t_data; int t_tableOid; int t_self; int t_len; } ;
typedef int Oid ;
typedef int HeapTupleHeader ;
typedef TYPE_1__ HeapTupleData ;
typedef int Datum ;


 int DatumGetHeapTupleHeader (int ) ;
 int HeapTupleHeaderGetDatumLength (int ) ;
 int HeapTupleHeaderGetTypMod (int ) ;
 int HeapTupleHeaderGetTypeId (int ) ;
 int InvalidOid ;
 int ItemPointerSetInvalid (int *) ;
 int lookup_rowtype_tupdesc (int ,int ) ;

__attribute__((used)) static TupleDesc
deconstruct_composite_datum(Datum value, HeapTupleData *tmptup)
{
 HeapTupleHeader td;
 Oid tupType;
 int32 tupTypmod;


 td = DatumGetHeapTupleHeader(value);


 tmptup->t_len = HeapTupleHeaderGetDatumLength(td);
 ItemPointerSetInvalid(&(tmptup->t_self));
 tmptup->t_tableOid = InvalidOid;
 tmptup->t_data = td;


 tupType = HeapTupleHeaderGetTypeId(td);
 tupTypmod = HeapTupleHeaderGetTypMod(td);
 return lookup_rowtype_tupdesc(tupType, tupTypmod);
}
