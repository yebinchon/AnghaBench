
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WDOG_TMROUTL ;
 int k20x_clock_init () ;

void __early_init(void) {


    while (WDOG_TMROUTL < 2)
        ;

    k20x_clock_init();
}
