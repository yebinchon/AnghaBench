
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



 int clear_oneshot_mods () ;
 int get_oneshot_mods () ;
 int has_oneshot_mods_timed_out () ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  bool queue = 1;


  switch (keycode) {
    case 128:
      if (record->event.pressed && get_oneshot_mods() && !has_oneshot_mods_timed_out()) {
        clear_oneshot_mods();
        queue = 0;
      }
      break;
  }
  return queue;
}
