
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


 int KC_GRV ;

 int register_code (int ) ;
 int shift_pressed () ;
 int unregister_code (int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {

  static bool tilde_pressed = 0;

  switch (keycode) {
  case 128:
    if (shift_pressed()) {
      if (record->event.pressed) {
        tilde_pressed = 1;
        register_code(KC_GRV);
        return 0;
      }
      else if (tilde_pressed) {
        unregister_code(KC_GRV);
        tilde_pressed = 0;
        return 0;
      }
    }
    return 1;
  default:
    return 1;
  }
}
