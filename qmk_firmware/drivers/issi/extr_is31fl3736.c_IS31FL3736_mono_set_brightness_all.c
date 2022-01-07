
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int IS31FL3736_mono_set_brightness (int,int ) ;

void IS31FL3736_mono_set_brightness_all(uint8_t value) {
    for (int i = 0; i < 96; i++) {
        IS31FL3736_mono_set_brightness(i, value);
    }
}
