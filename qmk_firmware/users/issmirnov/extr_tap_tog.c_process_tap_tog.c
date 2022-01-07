
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {scalar_t__ pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;


 int layer_clear () ;
 int layer_on (int ) ;
 int tap_tog_count ;
 int tap_tog_layer_other_key_pressed ;
 int tap_tog_layer_toggled_on ;

void process_tap_tog(uint8_t layer, keyrecord_t *record) {
  tap_tog_count++;

  if (record->event.pressed) {



    if(tap_tog_layer_toggled_on) {
      layer_clear();
      tap_tog_layer_toggled_on = 0;
    }




    else {

      layer_on(layer);
      tap_tog_layer_other_key_pressed = 0;
    }
  }


  else {

    if(tap_tog_layer_other_key_pressed) {

      layer_clear();
    }

    else {

      tap_tog_layer_toggled_on = 1;




      if (tap_tog_count >= 4 ) {
        tap_tog_count = 0;
        tap_tog_layer_toggled_on = 0;
      }
    }
  }
}
