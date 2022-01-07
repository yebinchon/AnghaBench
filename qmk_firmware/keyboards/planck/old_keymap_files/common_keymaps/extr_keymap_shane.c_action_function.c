
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int count; } ;
struct TYPE_6__ {int pressed; } ;
struct TYPE_7__ {TYPE_1__ tap; TYPE_2__ event; } ;
typedef TYPE_3__ keyrecord_t ;


 int KC_SPC ;

 int add_key (int ) ;
 int del_key (int ) ;
 int layer_off (int ) ;
 int layer_on (int) ;
 unsigned long layer_state ;
 int send_keyboard_report () ;

void action_function(keyrecord_t *record, uint8_t id, uint8_t opt)
{
  switch (id) {
  case 128:
    if (record->event.pressed) {


      for (uint8_t i = 0; i < 9; i += 2) {
        if (layer_state & (1UL << i))
          layer_on(i + 1);
      }
      layer_on(1);
    } else {

      for (uint8_t i = 0; i < 9; i += 2)
        layer_off(i + 1);

      if (record->tap.count != 0) {


        add_key(KC_SPC);
        send_keyboard_report();
        del_key(KC_SPC);
        send_keyboard_report();
      }
    }
    break;
  }
}
