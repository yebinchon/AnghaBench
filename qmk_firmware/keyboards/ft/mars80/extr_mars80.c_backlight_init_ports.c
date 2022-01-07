
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int D0 ;
 int D1 ;
 int D4 ;
 int D6 ;
 int setPinOutput (int ) ;
 int writePinHigh (int ) ;

void backlight_init_ports(void) {

    setPinOutput(D0);
    setPinOutput(D1);
    setPinOutput(D4);
    setPinOutput(D6);


    writePinHigh(D0);
    writePinHigh(D1);
    writePinHigh(D4);
    writePinHigh(D6);
}
