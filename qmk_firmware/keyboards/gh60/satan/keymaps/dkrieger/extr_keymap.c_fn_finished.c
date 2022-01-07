
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qk_tap_dance_state_t ;
struct TYPE_2__ {int state; } ;





 int _FN ;
 int _MOUSE ;
 int _UTIL ;
 int cur_dance (int *) ;
 TYPE_1__ fn_tap_state ;
 int layer_on (int ) ;

void fn_finished (qk_tap_dance_state_t *state, void *user_data) {
  fn_tap_state.state = cur_dance(state);
  switch (fn_tap_state.state) {

    case 129: layer_on(_FN); break;
    case 130: layer_on(_MOUSE); break;
    case 128: layer_on(_UTIL);
  }
}
