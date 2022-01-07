
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_7__ {scalar_t__ pressed; } ;
struct TYPE_8__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;
struct TYPE_10__ {int swap_lalt_lgui; } ;
struct TYPE_9__ {int mode; } ;




 int KC_LANG1 ;
 int KC_LANG2 ;


 int RGB_current_mode ;
 int SEND_STRING (int ) ;
 int SS_LALT (char*) ;
 int eeconfig_update_rgblight_default () ;
 TYPE_6__ keymap_config ;
 int register_code (int ) ;
 TYPE_4__ rgblight_config ;
 int rgblight_enable () ;
 int rgblight_mode (int ) ;
 int rgblight_step () ;
 int set_keylog (int,TYPE_2__*) ;
 int unregister_code (int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {






  switch (keycode) {
    default:
      return 1;
  }

  return 0;
}
