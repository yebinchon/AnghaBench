
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* TransactionState ;
struct TYPE_3__ {scalar_t__ blockState; } ;


 TYPE_1__* CurrentTransactionState ;
 scalar_t__ TBLOCK_DEFAULT ;

bool
IsTransactionOrTransactionBlock(void)
{
 TransactionState s = CurrentTransactionState;

 if (s->blockState == TBLOCK_DEFAULT)
  return 0;

 return 1;
}
