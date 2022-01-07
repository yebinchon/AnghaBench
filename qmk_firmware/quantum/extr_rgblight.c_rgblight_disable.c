
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ enable; int raw; } ;


 int RGBLIGHT_SPLIT_SET_CHANGE_MODE ;
 int dprintf (char*,scalar_t__) ;
 int eeconfig_update_rgblight (int ) ;
 TYPE_1__ rgblight_config ;
 int rgblight_set () ;
 int rgblight_timer_disable () ;
 int wait_ms (int) ;

void rgblight_disable(void) {
    rgblight_config.enable = 0;
    eeconfig_update_rgblight(rgblight_config.raw);
    dprintf("rgblight disable [EEPROM]: rgblight_config.enable = %u\n", rgblight_config.enable);



    RGBLIGHT_SPLIT_SET_CHANGE_MODE;
    wait_ms(50);
    rgblight_set();
}
