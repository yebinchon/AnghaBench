
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ layer_rgb; int raw; } ;


 int eeconfig_read_user () ;
 int rgblight_enable_noeeprom () ;
 int rgblight_mode_noeeprom (int) ;
 int rgblight_sethsv_noeeprom (int ,int,int) ;
 TYPE_1__ user_config ;

void keyboard_post_init_user(void) {
    user_config.raw = eeconfig_read_user();
    if(user_config.layer_rgb) {
        rgblight_enable_noeeprom();
        rgblight_mode_noeeprom(1);
        rgblight_sethsv_noeeprom(0,10,255);
    }
}
