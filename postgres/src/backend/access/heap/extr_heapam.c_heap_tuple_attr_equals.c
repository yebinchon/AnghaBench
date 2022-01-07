
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* TupleDesc ;
struct TYPE_8__ {int attlen; int attbyval; } ;
struct TYPE_7__ {int natts; } ;
typedef int HeapTuple ;
typedef TYPE_2__* Form_pg_attribute ;
typedef int Datum ;


 int Assert (int) ;
 scalar_t__ DatumGetObjectId (int ) ;
 int TableOidAttributeNumber ;
 TYPE_2__* TupleDescAttr (TYPE_1__*,int) ;
 int datumIsEqual (int ,int ,int ,int ) ;
 int heap_getattr (int ,int,TYPE_1__*,int*) ;

__attribute__((used)) static bool
heap_tuple_attr_equals(TupleDesc tupdesc, int attrnum,
        HeapTuple tup1, HeapTuple tup2)
{
 Datum value1,
    value2;
 bool isnull1,
    isnull2;
 Form_pg_attribute att;






 if (attrnum == 0)
  return 0;






 if (attrnum < 0)
 {
  if (attrnum != TableOidAttributeNumber)
   return 0;
 }







 value1 = heap_getattr(tup1, attrnum, tupdesc, &isnull1);
 value2 = heap_getattr(tup2, attrnum, tupdesc, &isnull2);





 if (isnull1 != isnull2)
  return 0;




 if (isnull1)
  return 1;
 if (attrnum <= 0)
 {

  return (DatumGetObjectId(value1) == DatumGetObjectId(value2));
 }
 else
 {
  Assert(attrnum <= tupdesc->natts);
  att = TupleDescAttr(tupdesc, attrnum - 1);
  return datumIsEqual(value1, value2, att->attbyval, att->attlen);
 }
}
