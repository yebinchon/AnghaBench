
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int IS31FL3731_set_value (int,int ) ;
 int LED_DRIVER_LED_COUNT ;

void IS31FL3731_set_value_all(uint8_t value) {
    for (int i = 0; i < LED_DRIVER_LED_COUNT; i++) {
        IS31FL3731_set_value(i, value);
    }
}
