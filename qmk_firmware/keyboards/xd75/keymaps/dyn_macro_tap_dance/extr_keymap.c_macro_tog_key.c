
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
 int process_record_dynamic_macro (int ,TYPE_3__*) ;

void macro_tog_key( qk_tap_dance_state_t *state, void *user_data ) {
  if ( state->count > 3 )
    return;

  keyrecord_t kr;
  kr.event.pressed = 0;
  uint16_t action = DYN_REC_STOP;

  if ( state->count == 1 ) {
    action = DYN_MACRO_PLAY1;
  }
  else if ( state->count == 2 ) {
    action = DYN_REC_STOP;
    kr.event.pressed = 1;
  }
  else if ( state->count == 3 ) {
    action = DYN_REC_START1;
  }

  process_record_dynamic_macro( action, &kr );
}
