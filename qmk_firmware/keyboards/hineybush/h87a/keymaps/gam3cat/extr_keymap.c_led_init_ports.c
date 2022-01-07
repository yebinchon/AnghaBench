
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRD ;
 int DDRE ;

void led_init_ports(void) {
  DDRD |= (1<<5);
  DDRE |= (1<<6);
}
