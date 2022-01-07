
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int LED_TYPE ;


 int WS2812_ADDRESS ;
 int WS2812_TIMEOUT ;
 int i2c_transmit (int ,int *,int,int ) ;
 int ws2812_init () ;

void ws2812_setleds(LED_TYPE *ledarray, uint16_t leds) {
    static bool s_init = 0;
    if (!s_init) {
        ws2812_init();
        s_init = 1;
    }

    i2c_transmit(WS2812_ADDRESS, (uint8_t *)ledarray, sizeof(LED_TYPE) * leds, WS2812_TIMEOUT);
}
