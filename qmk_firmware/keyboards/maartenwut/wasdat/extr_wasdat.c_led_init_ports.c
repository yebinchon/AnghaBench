
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int B0 ;
 int B1 ;
 int B2 ;
 int setPinOutput (int ) ;
 int writePinHigh (int ) ;

void led_init_ports(void) {
    setPinOutput(B0);
    writePinHigh(B0);
    setPinOutput(B1);
    writePinHigh(B1);
    setPinOutput(B2);
    writePinHigh(B2);
}
