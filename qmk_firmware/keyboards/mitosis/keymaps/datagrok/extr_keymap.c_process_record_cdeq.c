
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_4__ {scalar_t__ pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;


 int KC_1 ;


 int KC_LSHIFT ;
 int KC_RSHIFT ;
 int KC_SLSH ;
 int MOD_BIT (int ) ;
 int comm_shifted ;
 int get_mods () ;
 int ques_shifted ;
 int register_code (int) ;
 int unregister_code (int) ;

bool process_record_cdeq(uint16_t keycode, keyrecord_t *record) {
  uint8_t shifted;
  uint16_t s_keycode;
  bool *k_shifted;

  switch (keycode) {
  case 129:
    s_keycode = KC_SLSH;
    k_shifted = &comm_shifted;
    break;
  case 128:
    s_keycode = KC_1;
    k_shifted = &ques_shifted;
    break;
  default:
    return 1;
  }

  shifted = get_mods() & (MOD_BIT(KC_LSHIFT)|MOD_BIT(KC_RSHIFT));


  if (record->event.pressed && shifted) {
    *k_shifted = 1;
    register_code(s_keycode);
    return 0;


  } else if (!(record->event.pressed) && *k_shifted) {
    *k_shifted = 0;
    unregister_code(s_keycode);
    return 0;

  } else {
    return 1;
  }
}
