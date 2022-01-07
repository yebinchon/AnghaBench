
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32 ;
typedef int TupleDesc ;
struct TYPE_3__ {int * t_data; int t_tableOid; int t_self; int t_len; } ;
typedef int Oid ;
typedef int * HeapTupleHeader ;
typedef TYPE_1__ HeapTupleData ;
typedef int Datum ;
typedef int AttrNumber ;


 int AttributeNumberIsValid (int ) ;
 int ERROR ;
 int HeapTupleHeaderGetDatumLength (int *) ;
 int HeapTupleHeaderGetTypMod (int *) ;
 int HeapTupleHeaderGetTypeId (int *) ;
 int InvalidOid ;
 int ItemPointerSetInvalid (int *) ;
 int ReleaseTupleDesc (int ) ;
 int elog (int ,char*,...) ;
 int heap_getattr (TYPE_1__*,int ,int ,int*) ;
 int lookup_rowtype_tupdesc (int ,int ) ;

Datum
GetAttributeByNum(HeapTupleHeader tuple,
      AttrNumber attrno,
      bool *isNull)
{
 Datum result;
 Oid tupType;
 int32 tupTypmod;
 TupleDesc tupDesc;
 HeapTupleData tmptup;

 if (!AttributeNumberIsValid(attrno))
  elog(ERROR, "invalid attribute number %d", attrno);

 if (isNull == ((void*)0))
  elog(ERROR, "a NULL isNull pointer was passed");

 if (tuple == ((void*)0))
 {

  *isNull = 1;
  return (Datum) 0;
 }

 tupType = HeapTupleHeaderGetTypeId(tuple);
 tupTypmod = HeapTupleHeaderGetTypMod(tuple);
 tupDesc = lookup_rowtype_tupdesc(tupType, tupTypmod);






 tmptup.t_len = HeapTupleHeaderGetDatumLength(tuple);
 ItemPointerSetInvalid(&(tmptup.t_self));
 tmptup.t_tableOid = InvalidOid;
 tmptup.t_data = tuple;

 result = heap_getattr(&tmptup,
        attrno,
        tupDesc,
        isNull);

 ReleaseTupleDesc(tupDesc);

 return result;
}
