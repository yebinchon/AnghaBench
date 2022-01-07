
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TransactionId ;
struct TYPE_2__ {int fullTransactionId; } ;


 TYPE_1__* CurrentTransactionState ;
 int XidFromFullTransactionId (int ) ;

TransactionId
GetCurrentTransactionIdIfAny(void)
{
 return XidFromFullTransactionId(CurrentTransactionState->fullTransactionId);
}
