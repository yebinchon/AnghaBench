
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* TransactionState ;
struct TYPE_3__ {int nestingLevel; } ;


 TYPE_1__* CurrentTransactionState ;

int
GetCurrentTransactionNestLevel(void)
{
 TransactionState s = CurrentTransactionState;

 return s->nestingLevel;
}
