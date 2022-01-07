
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clock_init () ;
 int data_init () ;
 int inhibit () ;
 int wait_ms (int) ;

void ps2_host_init(void) {
    clock_init();
    data_init();


    wait_ms(2500);

    inhibit();
}
