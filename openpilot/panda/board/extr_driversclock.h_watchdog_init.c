
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int KR; int RLR; scalar_t__ PR; } ;


 TYPE_1__* IWDG ;

void watchdog_init(void) {

  IWDG->KR = 0x5555;
  IWDG->PR = 0;

  IWDG->RLR = 400 - 1;
  IWDG->KR = 0xCCCC;
}
