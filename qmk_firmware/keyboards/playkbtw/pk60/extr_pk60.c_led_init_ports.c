
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRF ;
 int PORTF ;

void led_init_ports(void) {

  DDRF |= (1 << 4);
  PORTF |= (1 << 4);

}
