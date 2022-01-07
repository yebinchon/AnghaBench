
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16 ;
typedef int TransactionId ;
typedef int HeapTupleHeader ;
typedef int Buffer ;


 int SetHintBits (int ,int ,int ,int ) ;

void
HeapTupleSetHintBits(HeapTupleHeader tuple, Buffer buffer,
      uint16 infomask, TransactionId xid)
{
 SetHintBits(tuple, buffer, infomask, xid);
}
