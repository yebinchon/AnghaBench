
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_5__ {int pressed; } ;
struct TYPE_6__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;





 int process_record_dynamic_macro (int,TYPE_2__*) ;
 int recording_dynamic_macro ;

__attribute__((used)) static bool process_record_dynamic_macro_wrapper(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {

    case 130:
    case 129:
      if (record->event.pressed) {
        recording_dynamic_macro = 1;
      }
      break;
    case 128:
      if (record->event.pressed) {
        recording_dynamic_macro = 0;
      }
      break;
  }

  if (!process_record_dynamic_macro(keycode, record)) {
    return 0;
  }

  return 1;
}
