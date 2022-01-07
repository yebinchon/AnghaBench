
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int mode; int enable; } ;


 TYPE_1__ rgblight_config ;

uint8_t rgblight_get_mode(void) {
    if (!rgblight_config.enable) {
        return 0;
    }

    return rgblight_config.mode;
}
