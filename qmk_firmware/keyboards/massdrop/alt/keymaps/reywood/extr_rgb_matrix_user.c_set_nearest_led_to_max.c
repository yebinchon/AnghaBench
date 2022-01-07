
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 size_t ISSI3733_LED_COUNT ;
 int LED_BOOST_PEAK ;
 int * led_boosts ;
 size_t map_key_position_to_led_index (size_t,size_t) ;

__attribute__((used)) static void set_nearest_led_to_max(uint8_t col, uint8_t row) {
  uint8_t led_index = map_key_position_to_led_index(col, row);
  if (led_index >= 0 && led_index < ISSI3733_LED_COUNT) {
    led_boosts[led_index] = LED_BOOST_PEAK;
  }
}
