
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int B1 ;
 int B2 ;
 int B3 ;
 int B4 ;
 int D7 ;
 int setPinOutput (int ) ;

void backlight_init_ports(void) {
    setPinOutput(B1);
    setPinOutput(B2);
    setPinOutput(B3);
    setPinOutput(B4);
    setPinOutput(D7);
}
