
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* TransactionState ;
struct TYPE_3__ {scalar_t__ blockState; } ;


 TYPE_1__* CurrentTransactionState ;
 scalar_t__ TBLOCK_IMPLICIT_INPROGRESS ;
 scalar_t__ TBLOCK_STARTED ;

void
BeginImplicitTransactionBlock(void)
{
 TransactionState s = CurrentTransactionState;
 if (s->blockState == TBLOCK_STARTED)
  s->blockState = TBLOCK_IMPLICIT_INPROGRESS;
}
