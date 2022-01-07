
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_5__ {int pressed; } ;
struct TYPE_6__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;
struct TYPE_7__ {int led_level; int raw; } ;



 int KC_RSFT ;

 int backlight_step () ;
 int eeconfig_update_kb (int ) ;
 TYPE_4__ keyboard_config ;
 int layer_state ;
 int layer_state_set_kb (int ) ;
 int planck_ez_left_led_level (int) ;
 int planck_ez_right_led_level (int) ;
 int register_code (int ) ;
 int unregister_code (int ) ;

bool process_record_keymap(uint16_t keycode, keyrecord_t *record) {
    switch (keycode) {
    }
    return 1;
}
