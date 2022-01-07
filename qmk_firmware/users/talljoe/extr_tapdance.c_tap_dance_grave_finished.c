
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; } ;
typedef TYPE_1__ qk_tap_dance_state_t ;


 int SEND_STRING (char*) ;

void tap_dance_grave_finished(qk_tap_dance_state_t *state, void *user_data) {
  switch(state->count) {
    case 1:
      SEND_STRING("`");
      break;
    case 2:
      SEND_STRING("~");
      break;
  }
}
