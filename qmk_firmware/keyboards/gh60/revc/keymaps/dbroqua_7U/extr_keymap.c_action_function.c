
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;



 int esc_led_toggle () ;

void action_function(keyrecord_t *record, uint8_t id, uint8_t opt) {
  switch (id) {
    case 128:
      if (record->event.pressed) {
        esc_led_toggle();
      }
      break;
  }
}
