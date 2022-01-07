
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int TupleDesc ;
struct TYPE_4__ {int t_tableOid; int t_data; int t_self; } ;
typedef TYPE_1__* HeapTuple ;
typedef int Datum ;


 int Assert (TYPE_1__*) ;
 int CommandIdGetDatum (int ) ;
 int ERROR ;
 int HeapTupleHeaderGetRawCommandId (int ) ;
 int HeapTupleHeaderGetRawXmax (int ) ;
 int HeapTupleHeaderGetRawXmin (int ) ;




 int ObjectIdGetDatum (int ) ;
 int PointerGetDatum (int *) ;


 int TransactionIdGetDatum (int ) ;
 int elog (int ,char*,int) ;

Datum
heap_getsysattr(HeapTuple tup, int attnum, TupleDesc tupleDesc, bool *isnull)
{
 Datum result;

 Assert(tup);


 *isnull = 0;

 switch (attnum)
 {
  case 129:

   result = PointerGetDatum(&(tup->t_self));
   break;
  case 130:
   result = TransactionIdGetDatum(HeapTupleHeaderGetRawXmin(tup->t_data));
   break;
  case 132:
   result = TransactionIdGetDatum(HeapTupleHeaderGetRawXmax(tup->t_data));
   break;
  case 131:
  case 133:







   result = CommandIdGetDatum(HeapTupleHeaderGetRawCommandId(tup->t_data));
   break;
  case 128:
   result = ObjectIdGetDatum(tup->t_tableOid);
   break;
  default:
   elog(ERROR, "invalid attnum: %d", attnum);
   result = 0;
   break;
 }
 return result;
}
