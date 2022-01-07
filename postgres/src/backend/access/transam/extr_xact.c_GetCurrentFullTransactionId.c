
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* TransactionState ;
struct TYPE_4__ {int fullTransactionId; } ;
typedef int FullTransactionId ;


 int AssignTransactionId (TYPE_1__*) ;
 TYPE_1__* CurrentTransactionState ;
 int FullTransactionIdIsValid (int ) ;

FullTransactionId
GetCurrentFullTransactionId(void)
{
 TransactionState s = CurrentTransactionState;

 if (!FullTransactionIdIsValid(s->fullTransactionId))
  AssignTransactionId(s);
 return s->fullTransactionId;
}
