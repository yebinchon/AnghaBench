
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__ ISSI3733_LED_COUNT ;
 int led_set_one (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;

void led_set_all(uint8_t r, uint8_t g, uint8_t b) {
    for (uint8_t i = 0; i < ISSI3733_LED_COUNT; i++) {
        led_set_one(i, r, g, b);
    }
}
