
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int stm32_clock_init () ;

void __early_init(void) {

  stm32_clock_init();
}
