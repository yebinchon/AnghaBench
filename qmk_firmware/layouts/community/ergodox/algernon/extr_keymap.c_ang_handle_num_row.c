
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_5__ {scalar_t__ pressed; } ;
struct TYPE_6__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;
struct TYPE_7__ {int mods; } ;
 size_t KC_1 ;
 size_t KC_2 ;
 size_t KC_3 ;
 size_t KC_4 ;
 size_t KC_5 ;
 size_t KC_6 ;
 size_t KC_7 ;
 size_t KC_8 ;
 int KC_LSFT ;
 int MOD_BIT (int ) ;
 int get_oneshot_mods () ;
 int has_oneshot_mods_timed_out () ;
 TYPE_3__* keyboard_report ;
 int register_code (size_t) ;
 int unregister_code (size_t) ;

__attribute__((used)) static void ang_handle_num_row(uint8_t id, keyrecord_t *record) {
  uint8_t idx = id - 136;
  uint8_t kc;
  static bool shifted[10];

  if (keyboard_report->mods & MOD_BIT(KC_LSFT) ||
      ((get_oneshot_mods() & MOD_BIT(KC_LSFT)) && !has_oneshot_mods_timed_out())) {
    if (record->event.pressed)
      shifted[idx] = 1;
  }

  if (!shifted[idx]) {
    kc = idx + KC_1;
  } else {
    switch (id) {
    case 129:
    case 128:
      shifted[idx] = 0;
      return;

    case 130:
      kc = KC_2;
      break;
    case 132:
      kc = KC_8;
      break;
    case 134:
      kc = KC_4;
      break;
    case 136:
      kc = KC_6;
      break;

    case 137:
      kc = KC_5;
      break;
    case 135:
      kc = KC_1;
      break;
    case 133:
      kc = KC_3;
      break;
    case 131:
      kc = KC_7;
      break;
    }
  }

  if (record->event.pressed) {
    register_code (kc);
  } else {
    unregister_code (kc);
    shifted[idx] = 0;
  }
}
