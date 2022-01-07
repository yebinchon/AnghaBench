
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_4__ {int pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;


 scalar_t__ KC_LSHIFT ;
 scalar_t__ KC_RSHIFT ;
 int LAYER_MASK ;
 scalar_t__ MAGIC ;
 int MAGIC_LAYER ;
 scalar_t__ RESET ;
 int SHIFTMAGIC_LAYER ;
 int layer_state ;
 int layer_state_set (int) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  static bool shifted = 0;
  static bool magic = 0;

  if (keycode == KC_LSHIFT || keycode == KC_RSHIFT) {
    shifted = record->event.pressed;
  } else if (keycode == MAGIC) {
    magic = record->event.pressed;
  } else if (keycode == RESET) {



    return (record->event.pressed && shifted);
  }


  uint32_t new_layer_state = layer_state & LAYER_MASK;
  if (magic) {
    new_layer_state |= (shifted ? SHIFTMAGIC_LAYER : MAGIC_LAYER);
  }
  if (layer_state != new_layer_state) {
    layer_state_set(new_layer_state);
  }

  return 1;
}
