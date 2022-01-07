
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ blockState; } ;


 TYPE_1__* CurrentTransactionState ;
 scalar_t__ IsSubTransaction () ;
 scalar_t__ IsTransactionBlock () ;
 scalar_t__ TBLOCK_DEFAULT ;
 scalar_t__ TBLOCK_STARTED ;

bool
IsInTransactionBlock(bool isTopLevel)
{




 if (IsTransactionBlock())
  return 1;

 if (IsSubTransaction())
  return 1;

 if (!isTopLevel)
  return 1;

 if (CurrentTransactionState->blockState != TBLOCK_DEFAULT &&
  CurrentTransactionState->blockState != TBLOCK_STARTED)
  return 1;

 return 0;
}
