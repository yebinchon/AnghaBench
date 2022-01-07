
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int KR; } ;


 TYPE_1__* IWDG ;

void watchdog_feed(void) {
  IWDG->KR = 0xAAAA;
}
