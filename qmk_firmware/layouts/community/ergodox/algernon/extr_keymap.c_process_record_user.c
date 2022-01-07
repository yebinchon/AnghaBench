
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_5__ {int row; int col; } ;
struct TYPE_6__ {scalar_t__ pressed; TYPE_1__ key; } ;
struct TYPE_7__ {TYPE_2__ event; } ;
typedef TYPE_3__ keyrecord_t ;


 scalar_t__ ADORE ;
 scalar_t__ BASE ;
 unsigned long HUN ;
 int KC_4 ;
 scalar_t__ KC_A ;
 scalar_t__ KC_D ;
 scalar_t__ KC_E ;
 int KC_EQL ;
 scalar_t__ KC_ESC ;
 int KC_MINS ;
 int KC_QUOT ;
 int KC_RSFT ;
 int KC_S ;
 int KC_SPC ;
 scalar_t__ KC_T ;
 int KC_Y ;
 int ang_tap (int ,int ,scalar_t__,scalar_t__,int ,int ,int ,...) ;
 scalar_t__ biton32 (unsigned long) ;
 int clear_oneshot_mods () ;
 scalar_t__ get_oneshot_mods () ;
 int has_oneshot_mods_timed_out () ;
 scalar_t__ is_adore ;
 scalar_t__* last4 ;
 int layer_off (unsigned long) ;
 unsigned long layer_state ;
 scalar_t__ log_enable ;
 int register_code (int ) ;
 scalar_t__ time_travel ;
 int unregister_code (int ) ;
 int uprintf (char*,int ,int ,scalar_t__,char*) ;

bool process_record_user (uint16_t keycode, keyrecord_t *record) {
  if (keycode == KC_ESC && record->event.pressed) {
    bool queue = 1;

    if ((get_oneshot_mods ()) && !has_oneshot_mods_timed_out ()) {
      clear_oneshot_mods ();
      queue = 0;
    }
    if (layer_state & (1UL<<HUN)) {
      layer_off (HUN);
      queue = 0;
    }
    return queue;
  }

  if (time_travel && !record->event.pressed) {
    uint8_t p;


    for (p = 0; p < 3; p++) {
      last4[p] = last4[p + 1];
    }
    last4[3] = keycode;

    if (last4[0] == KC_D && last4[1] == KC_A && last4[2] == KC_T && last4[3] == KC_E) {
      ang_tap (KC_E, KC_SPC, KC_MINS, KC_D, KC_SPC, KC_QUOT, 0);
      register_code (KC_RSFT);
      register_code (KC_EQL);
      unregister_code (KC_EQL);
      unregister_code (KC_RSFT);

      ang_tap (KC_4, KC_SPC, KC_D, KC_A, KC_Y, KC_S, KC_QUOT, 0);

      return 0;
    }
  }

  return 1;
}
