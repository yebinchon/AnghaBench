
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int led_toggle (int,int) ;

void set_layer_indicators(uint8_t layer) {

 switch (layer)
 {
  case 0:
   led_toggle(0, 1);
   led_toggle(1, 0);
   led_toggle(2, 0);
   break;
  case 1:
   led_toggle(0, 1);
   led_toggle(1, 1);
   led_toggle(2, 0);
   break;
  case 2:
   led_toggle(0, 1);
   led_toggle(1, 1);
   led_toggle(2, 1);
   break;
  case 3:
   led_toggle(0, 0);
   led_toggle(1, 1);
   led_toggle(2, 1);
   break;
  case 4:
   led_toggle(0, 0);
   led_toggle(1, 0);
   led_toggle(2, 1);
   break;
  default:
   led_toggle(0, 1);
   led_toggle(1, 0);
   led_toggle(2, 1);
   break;
 }

}
