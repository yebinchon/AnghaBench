
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qk_tap_dance_state_t ;
struct TYPE_2__ {int state; } ;





 int _FN ;
 int _MOUSE ;
 int _MOUSESHIFT ;
 int _UTIL ;
 TYPE_1__ fn_tap_state ;
 int layer_off (int ) ;

void fn_reset (qk_tap_dance_state_t *state, void *user_data) {
  switch (fn_tap_state.state) {
    case 129: layer_off(_FN); break;
    case 130: layer_off(_MOUSE); layer_off(_MOUSESHIFT); break;
    case 128: layer_off(_UTIL);
  }
}
