
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int LED_TYPE ;


 int RGB_DI_PIN ;
 int _BV (int) ;
 int ws2812_setleds_pin (int *,int ,int ) ;

void inline ws2812_setleds(LED_TYPE *ledarray, uint16_t leds) {

    ws2812_setleds_pin(ledarray, leds, _BV(RGB_DI_PIN & 0xF));
}
