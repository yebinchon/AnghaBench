
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int int32 ;
typedef TYPE_1__* TupleDesc ;
struct TYPE_12__ {scalar_t__ attnum; int attname; } ;
struct TYPE_11__ {int * t_data; int t_tableOid; int t_self; int t_len; } ;
struct TYPE_10__ {int natts; } ;
typedef int Oid ;
typedef int * HeapTupleHeader ;
typedef TYPE_2__ HeapTupleData ;
typedef TYPE_3__* Form_pg_attribute ;
typedef int Datum ;
typedef scalar_t__ AttrNumber ;


 int ERROR ;
 int HeapTupleHeaderGetDatumLength (int *) ;
 int HeapTupleHeaderGetTypMod (int *) ;
 int HeapTupleHeaderGetTypeId (int *) ;
 scalar_t__ InvalidAttrNumber ;
 int InvalidOid ;
 int ItemPointerSetInvalid (int *) ;
 int ReleaseTupleDesc (TYPE_1__*) ;
 TYPE_3__* TupleDescAttr (TYPE_1__*,int) ;
 int elog (int ,char*,...) ;
 int heap_getattr (TYPE_2__*,scalar_t__,TYPE_1__*,int*) ;
 TYPE_1__* lookup_rowtype_tupdesc (int ,int ) ;
 scalar_t__ namestrcmp (int *,char const*) ;

Datum
GetAttributeByName(HeapTupleHeader tuple, const char *attname, bool *isNull)
{
 AttrNumber attrno;
 Datum result;
 Oid tupType;
 int32 tupTypmod;
 TupleDesc tupDesc;
 HeapTupleData tmptup;
 int i;

 if (attname == ((void*)0))
  elog(ERROR, "invalid attribute name");

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

 attrno = InvalidAttrNumber;
 for (i = 0; i < tupDesc->natts; i++)
 {
  Form_pg_attribute att = TupleDescAttr(tupDesc, i);

  if (namestrcmp(&(att->attname), attname) == 0)
  {
   attrno = att->attnum;
   break;
  }
 }

 if (attrno == InvalidAttrNumber)
  elog(ERROR, "attribute \"%s\" does not exist", attname);






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
