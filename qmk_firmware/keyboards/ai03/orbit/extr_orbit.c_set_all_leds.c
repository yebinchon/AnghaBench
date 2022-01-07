
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int led_toggle (int,int) ;

void set_all_leds(bool leds[6]) {
 for (int i = 0; i < 6; i++) {
  led_toggle(i, leds[i]);
 }
}
