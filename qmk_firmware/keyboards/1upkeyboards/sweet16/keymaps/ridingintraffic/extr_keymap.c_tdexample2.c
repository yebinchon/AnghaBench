
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int count; } ;
typedef TYPE_1__ qk_tap_dance_state_t ;


 int EXAMPLESTRING2 ;
 int SEND_STRING (int ) ;
 int reset_tap_dance (TYPE_1__*) ;

void tdexample2(qk_tap_dance_state_t *state, void *user_data) {
  if (state->count >= 2) {
    SEND_STRING(EXAMPLESTRING2);
    reset_tap_dance (state);
  }
}
