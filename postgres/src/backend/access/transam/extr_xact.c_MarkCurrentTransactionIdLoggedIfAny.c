
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int didLogXid; int fullTransactionId; } ;


 TYPE_1__* CurrentTransactionState ;
 scalar_t__ FullTransactionIdIsValid (int ) ;

void
MarkCurrentTransactionIdLoggedIfAny(void)
{
 if (FullTransactionIdIsValid(CurrentTransactionState->fullTransactionId))
  CurrentTransactionState->didLogXid = 1;
}
