
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int count; } ;
typedef TYPE_1__ qk_tap_dance_state_t ;
struct TYPE_5__ {int enable; } ;


 int LED ;
 int SEND_STRING (char*) ;
 int layer_off (int ) ;
 int layer_on (int ) ;
 scalar_t__ layer_state_is (int ) ;
 int print (char*) ;
 int println (char*) ;
 TYPE_2__ rgblight_config ;
 int rgblight_enable () ;
 int rgblight_step () ;

void dance_toggle (qk_tap_dance_state_t *state, void *user_data) {
  if (state->count >= 2) {
    println("Double tapped, switching layers");
    if (layer_state_is(LED)) {
      layer_off(LED);
    } else {
      layer_on(LED);
    }
  } else {
    print("Single tapped: ");
    if (layer_state_is(LED)) {






    } else {
      println("Base layer, sending string");
      SEND_STRING("This thing is BIG!!\n");
    }
  }
}
