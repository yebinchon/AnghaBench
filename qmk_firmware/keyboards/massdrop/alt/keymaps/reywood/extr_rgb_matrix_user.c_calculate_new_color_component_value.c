
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float uint8_t ;


 float LED_BOOST_PEAK ;
 float* led_boosts ;
 size_t led_cur_index ;

__attribute__((used)) static uint8_t calculate_new_color_component_value(uint8_t max, uint8_t min) {
  uint8_t current_boost = led_boosts[led_cur_index];
  return (float)(max - min) * current_boost / LED_BOOST_PEAK + min;
}
