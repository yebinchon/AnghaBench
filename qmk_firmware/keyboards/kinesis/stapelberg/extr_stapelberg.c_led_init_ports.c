
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRF ;

void led_init_ports() {

  DDRF |= (1<<0);
  DDRF |= (1<<1);
  DDRF |= (1<<2);
  DDRF |= (1<<3);
}
