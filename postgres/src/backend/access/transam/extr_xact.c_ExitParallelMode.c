
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* TransactionState ;
struct TYPE_3__ {int parallelModeLevel; } ;


 int Assert (int) ;
 TYPE_1__* CurrentTransactionState ;
 int ParallelContextActive () ;

void
ExitParallelMode(void)
{
 TransactionState s = CurrentTransactionState;

 Assert(s->parallelModeLevel > 0);
 Assert(s->parallelModeLevel > 1 || !ParallelContextActive());

 --s->parallelModeLevel;
}
