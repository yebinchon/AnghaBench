
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HeapTupleHeader ;
typedef int CommandId ;


 int GetComboCommandId (int ,int ) ;
 int HeapTupleHeaderGetCmin (int ) ;
 int HeapTupleHeaderGetRawXmin (int ) ;
 int HeapTupleHeaderXminCommitted (int ) ;
 scalar_t__ TransactionIdIsCurrentTransactionId (int ) ;

void
HeapTupleHeaderAdjustCmax(HeapTupleHeader tup,
        CommandId *cmax,
        bool *iscombo)
{






 if (!HeapTupleHeaderXminCommitted(tup) &&
  TransactionIdIsCurrentTransactionId(HeapTupleHeaderGetRawXmin(tup)))
 {
  CommandId cmin = HeapTupleHeaderGetCmin(tup);

  *cmax = GetComboCommandId(cmin, *cmax);
  *iscombo = 1;
 }
 else
 {
  *iscombo = 0;
 }
}
