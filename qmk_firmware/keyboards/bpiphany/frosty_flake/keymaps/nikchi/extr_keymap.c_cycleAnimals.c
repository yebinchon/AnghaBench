
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; } ;
typedef TYPE_1__ qk_tap_dance_state_t ;


 size_t ANIMALS ;
 int KC_BSPC ;
 int MAXEMOJITAPS ;
 scalar_t__ pgm_read_dword (int *) ;
 int register_hex32 (scalar_t__) ;
 int tap (int ) ;
 int unicode_input_finish () ;
 int unicode_input_start () ;
 int * unicode_map ;

void cycleAnimals(qk_tap_dance_state_t *state, void *user_data) {
  if(state->count == 1) {
    unicode_input_start();
    register_hex32(pgm_read_dword(&unicode_map[ANIMALS]));
    unicode_input_finish();
  }
  else if(state->count <= MAXEMOJITAPS) {
    tap(KC_BSPC);
    unicode_input_start();
    register_hex32(pgm_read_dword(&unicode_map[ANIMALS])+state->count);
    unicode_input_finish();
  }
}
