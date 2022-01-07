
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int C7 ;
 int E6 ;
 int setPinOutput (int ) ;
 int writePinHigh (int ) ;

void led_init_ports(void) {
 setPinOutput(C7);
 writePinHigh(C7);
 setPinOutput(E6);
 writePinHigh(E6);
}
