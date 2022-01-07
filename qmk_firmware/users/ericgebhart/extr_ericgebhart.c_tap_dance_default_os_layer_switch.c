
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int count; } ;
typedef TYPE_1__ qk_tap_dance_state_t ;
struct TYPE_6__ {int mods; } ;


 int KC_LSFT ;
 int KC_RSFT ;
 int MOD_BIT (int ) ;
 TYPE_4__* keyboard_report ;
 int on_qwerty () ;
 int reset_tap_dance (TYPE_1__*) ;
 int switch_default_layer_on_bepo (int ) ;
 int switch_default_layer_on_qwerty (int ) ;

void tap_dance_default_os_layer_switch (qk_tap_dance_state_t *state, void *user_data) {

  bool shifted = ( keyboard_report->mods & (MOD_BIT(KC_LSFT)|MOD_BIT(KC_RSFT)) );
  int qwerty = on_qwerty();



  if(shifted){
    if (qwerty)
      switch_default_layer_on_bepo(state->count);
    else
          switch_default_layer_on_qwerty(state->count);


  } else {
    if (qwerty)
      switch_default_layer_on_qwerty(state->count);
    else
      switch_default_layer_on_bepo(state->count);
  }

  reset_tap_dance(state);
}
