
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sixshooter_led_0_on () ;
 int sixshooter_led_1_on () ;
 int sixshooter_led_2_on () ;
 int sixshooter_led_3_on () ;
 int sixshooter_led_4_on () ;
 int sixshooter_led_5_on () ;

inline void sixshooter_led_all_on(void) {
  sixshooter_led_0_on();
  sixshooter_led_1_on();
  sixshooter_led_2_on();
  sixshooter_led_3_on();
  sixshooter_led_4_on();
  sixshooter_led_5_on();
}
