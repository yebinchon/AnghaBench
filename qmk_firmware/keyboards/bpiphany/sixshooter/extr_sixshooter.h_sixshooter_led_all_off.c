
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sixshooter_led_0_off () ;
 int sixshooter_led_1_off () ;
 int sixshooter_led_2_off () ;
 int sixshooter_led_3_off () ;
 int sixshooter_led_4_off () ;
 int sixshooter_led_5_off () ;

inline void sixshooter_led_all_off(void) {
  sixshooter_led_0_off();
  sixshooter_led_1_off();
  sixshooter_led_2_off();
  sixshooter_led_3_off();
  sixshooter_led_4_off();
  sixshooter_led_5_off();
}
