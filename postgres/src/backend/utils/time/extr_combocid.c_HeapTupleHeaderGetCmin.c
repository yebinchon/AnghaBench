
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int t_infomask; } ;
typedef TYPE_1__* HeapTupleHeader ;
typedef int CommandId ;


 int Assert (int) ;
 int GetRealCmin (int ) ;
 int HEAP_COMBOCID ;
 int HEAP_MOVED ;
 int HeapTupleHeaderGetRawCommandId (TYPE_1__*) ;
 int HeapTupleHeaderGetXmin (TYPE_1__*) ;
 int TransactionIdIsCurrentTransactionId (int ) ;

CommandId
HeapTupleHeaderGetCmin(HeapTupleHeader tup)
{
 CommandId cid = HeapTupleHeaderGetRawCommandId(tup);

 Assert(!(tup->t_infomask & HEAP_MOVED));
 Assert(TransactionIdIsCurrentTransactionId(HeapTupleHeaderGetXmin(tup)));

 if (tup->t_infomask & HEAP_COMBOCID)
  return GetRealCmin(cid);
 else
  return cid;
}
