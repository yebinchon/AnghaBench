
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {scalar_t__ pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;




 int sixshooter_led_all_off () ;
 int sixshooter_led_all_on () ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {


  if (record->event.pressed) {


    switch(keycode) {
      case 128:
        sixshooter_led_all_on();
        return 0;
      case 129:
        sixshooter_led_all_off();
        return 0;
    }
  }
  return 1;
}
