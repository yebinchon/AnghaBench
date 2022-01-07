
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ firstFreeBuffer; } ;


 TYPE_1__* StrategyControl ;

bool
have_free_buffer()
{
 if (StrategyControl->firstFreeBuffer >= 0)
  return 1;
 else
  return 0;
}
