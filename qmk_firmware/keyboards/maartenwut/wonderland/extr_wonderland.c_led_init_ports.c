
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int B1 ;
 int B2 ;
 int B3 ;
 int setPinOutput (int ) ;

void led_init_ports(void) {

    setPinOutput(B1);
    setPinOutput(B2);
    setPinOutput(B3);
}
