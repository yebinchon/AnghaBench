
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int t_infomask; } ;
typedef TYPE_1__* HeapTupleHeader ;
typedef int CommandId ;


 int Assert (int) ;
 scalar_t__ CritSectionCount ;
 int GetRealCmax (int ) ;
 int HEAP_COMBOCID ;
 int HEAP_MOVED ;
 int HeapTupleHeaderGetRawCommandId (TYPE_1__*) ;
 int HeapTupleHeaderGetUpdateXid (TYPE_1__*) ;
 scalar_t__ TransactionIdIsCurrentTransactionId (int ) ;

CommandId
HeapTupleHeaderGetCmax(HeapTupleHeader tup)
{
 CommandId cid = HeapTupleHeaderGetRawCommandId(tup);

 Assert(!(tup->t_infomask & HEAP_MOVED));







 Assert(CritSectionCount > 0 ||
     TransactionIdIsCurrentTransactionId(HeapTupleHeaderGetUpdateXid(tup)));

 if (tup->t_infomask & HEAP_COMBOCID)
  return GetRealCmax(cid);
 else
  return cid;
}
