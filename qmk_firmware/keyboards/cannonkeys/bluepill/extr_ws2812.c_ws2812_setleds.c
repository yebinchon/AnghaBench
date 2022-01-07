
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef size_t uint16_t ;
typedef int LED_TYPE ;


 int set_led_color_rgb (int ,size_t) ;

void ws2812_setleds(LED_TYPE *ledarray, uint16_t number_of_leds) {
  uint8_t i = 0;
  while (i < number_of_leds) {
    set_led_color_rgb(ledarray[i], i);
    i++;
  }
}
