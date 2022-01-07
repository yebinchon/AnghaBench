
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int set_layer_led (int) ;
 int set_switch_led (int,int) ;

void led_set_layer(int layer) {
 switch(layer) {
  case 0:
   set_layer_led(0);
   set_switch_led(1, 1);
   set_switch_led(2, 1);
   set_switch_led(3, 1);
   set_switch_led(4, 1);
   set_switch_led(5, 1);
   set_switch_led(6, 1);
   break;

  case 1:
   set_layer_led(1);
   set_switch_led(1, 0);
   set_switch_led(2, 0);
   set_switch_led(3, 0);
   set_switch_led(4, 0);
   set_switch_led(5, 0);
   set_switch_led(6, 0);
   break;

  case 2:
   set_layer_led(2);



   break;
 }
}
