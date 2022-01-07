
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





 int is_bspc_pressed ;
 int is_ctl_pressed ;
 int is_esc_pressed ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case 128:
      is_ctl_pressed = record->event.pressed;
      break;
    case 129:
      is_esc_pressed = record->event.pressed;
      break;
    case 130:
      is_bspc_pressed = record->event.pressed;
      break;
  };
  return 1;
}
