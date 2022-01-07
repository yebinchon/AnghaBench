
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* TransactionState ;
struct TYPE_3__ {int nestingLevel; } ;


 TYPE_1__* CurrentTransactionState ;

bool
IsSubTransaction(void)
{
 TransactionState s = CurrentTransactionState;

 if (s->nestingLevel >= 2)
  return 1;

 return 0;
}
