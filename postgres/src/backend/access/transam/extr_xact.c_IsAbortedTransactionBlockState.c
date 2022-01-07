
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* TransactionState ;
struct TYPE_3__ {scalar_t__ blockState; } ;


 TYPE_1__* CurrentTransactionState ;
 scalar_t__ TBLOCK_ABORT ;
 scalar_t__ TBLOCK_SUBABORT ;

bool
IsAbortedTransactionBlockState(void)
{
 TransactionState s = CurrentTransactionState;

 if (s->blockState == TBLOCK_ABORT ||
  s->blockState == TBLOCK_SUBABORT)
  return 1;

 return 0;
}
