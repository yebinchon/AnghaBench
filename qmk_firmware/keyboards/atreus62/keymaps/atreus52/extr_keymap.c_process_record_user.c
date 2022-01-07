
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_4__ {scalar_t__ pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;


 int DVORAK ;
 scalar_t__ KC_LCTL ;
 scalar_t__ KC_LGUI ;
 int layer_invert (int ) ;
 int qw_dv_swap_state ;

bool process_record_user (uint16_t keycode, keyrecord_t *record) {
  if (keycode == KC_LGUI) {
    if (record->event.pressed) {
      qw_dv_swap_state |= 0b00000001;
    } else {
      qw_dv_swap_state &= ~(0b00000001);
    }
  }
  if (keycode == KC_LCTL) {
    if (record->event.pressed) {
      qw_dv_swap_state |= 0b00000010;
    } else {
      qw_dv_swap_state &= ~(0b00000010);
    }
  }

  if (qw_dv_swap_state == 0b00000011) {
    layer_invert(DVORAK);
  }
  return 1;
}
