
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_7__ {int count; } ;
typedef TYPE_2__ qk_tap_dance_state_t ;
struct TYPE_6__ {int pressed; } ;
struct TYPE_8__ {TYPE_1__ event; } ;
typedef TYPE_3__ keyrecord_t ;


 int DYN_MACRO_PLAY1 ;
 int DYN_REC_START1 ;
 int DYN_REC_STOP ;
 int current_layer_state ;
 int dprintf (char*,int) ;
 int is_macro1_recording ;
 int layer_state_set_user (int ) ;
 int process_record_dynamic_macro (int ,TYPE_3__*) ;

void macro_tapdance_fn(qk_tap_dance_state_t *state, void *user_data) {
  uint16_t keycode;
  keyrecord_t record;
  dprintf("macro_tap_dance_fn %d\n", state->count);
  if (is_macro1_recording) {
    keycode = DYN_REC_STOP;
    is_macro1_recording = 0;
    layer_state_set_user(current_layer_state);
  } else if (state->count == 1) {
    keycode = DYN_MACRO_PLAY1;
  } else {
    keycode = DYN_REC_START1;
    is_macro1_recording = 1;
    layer_state_set_user(current_layer_state);
  }

  record.event.pressed = 1;
  process_record_dynamic_macro(keycode, &record);
  record.event.pressed = 0;
  process_record_dynamic_macro(keycode, &record);
}
