
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int B2 ;
 int D0 ;
 int D1 ;
 int D2 ;
 int setPinOutput (int ) ;

void led_init_ports(void) {
  setPinOutput(B2);
  setPinOutput(D0);
  setPinOutput(D1);
  setPinOutput(D2);

}
