
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int TransactionId ;
struct TYPE_4__ {int t_infomask; } ;
typedef TYPE_1__* HeapTupleHeader ;


 int HeapTupleHeaderGetRawXmax (TYPE_1__*) ;
 int MultiXactIdGetUpdateXid (int ,int ) ;

TransactionId
HeapTupleGetUpdateXid(HeapTupleHeader tuple)
{
 return MultiXactIdGetUpdateXid(HeapTupleHeaderGetRawXmax(tuple),
           tuple->t_infomask);
}
