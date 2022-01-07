
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;



 int KC_LALT ;

 int KC_LCTRL ;
 int KC_TAB ;
 int MOD_BIT (int ) ;
 int SEND_STRING (char*) ;
 void* alt_tab_timer ;
 int is_alt_tab_active ;
 int register_code (int ) ;
 int register_mods (int ) ;
 int timer_elapsed (int) ;
 void* timer_read () ;
 int unregister_code (int ) ;
 int unregister_mods (int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  static uint16_t macro_timer;

  switch (keycode) {
    case 129:
      if (record->event.pressed) {
        if (!is_alt_tab_active) {
          is_alt_tab_active = 1;
          register_code(KC_LALT);
        }
        alt_tab_timer = timer_read();
        register_code(KC_TAB);
      } else {
        unregister_code(KC_TAB);
      }
      break;
  }

  switch (keycode){
    case 128:
      if(record->event.pressed){
        macro_timer = timer_read();
        register_mods(MOD_BIT(KC_LCTRL));
      } else {
        unregister_mods(MOD_BIT(KC_LCTRL));
        if (timer_elapsed(macro_timer) < 150) {
          SEND_STRING("!$");
        }
      }
    return 0;
  }
  return 1;
}
