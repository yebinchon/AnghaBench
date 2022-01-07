
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* TransactionState ;
typedef int TransactionId ;
struct TYPE_4__ {int fullTransactionId; } ;


 int AssignTransactionId (TYPE_1__*) ;
 TYPE_1__* CurrentTransactionState ;
 int FullTransactionIdIsValid (int ) ;
 int XidFromFullTransactionId (int ) ;

TransactionId
GetCurrentTransactionId(void)
{
 TransactionState s = CurrentTransactionState;

 if (!FullTransactionIdIsValid(s->fullTransactionId))
  AssignTransactionId(s);
 return XidFromFullTransactionId(s->fullTransactionId);
}
