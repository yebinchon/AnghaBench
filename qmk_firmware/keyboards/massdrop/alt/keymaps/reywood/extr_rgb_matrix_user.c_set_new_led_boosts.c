
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int ISSI3733_LED_COUNT ;
 int * led_boosts ;

__attribute__((used)) static void set_new_led_boosts(uint8_t* new_led_boosts) {
  for (int i = 0; i < ISSI3733_LED_COUNT; i++) {
    led_boosts[i] = new_led_boosts[i];
  }
}
