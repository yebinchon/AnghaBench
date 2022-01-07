
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int level; int enable; int raw; } ;


 int _delay_us (int) ;
 TYPE_1__ backlight_config ;
 int backlight_set (int) ;
 int eeconfig_update_backlight (int ) ;
 int rgblight_enable () ;
 int rgblight_mode (int) ;
 int rgblight_sethsv (int,int,int) ;

void matrix_init_user(void) {

    _delay_us(300);
    backlight_config.level = 2;
    backlight_config.enable = 1;
    eeconfig_update_backlight(backlight_config.raw);
    backlight_set(backlight_config.level);

    rgblight_enable();
    rgblight_mode(1);
    rgblight_sethsv(120,255,255);
    rgblight_mode(6);
}
