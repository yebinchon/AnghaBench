
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F0 ;
 int F1 ;
 int F4 ;
 int setPinOutput (int ) ;

void led_init_ports(void) {
    setPinOutput(F0);
    setPinOutput(F1);
    setPinOutput(F4);
}
