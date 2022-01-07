
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qk_tap_dance_state_t ;
struct TYPE_2__ {int state; } ;






 int _AL ;
 int _BL ;
 int _DL ;
 int _GM ;
 int active_layer ;
 int cur_dance (int *) ;
 TYPE_1__ dwltap_state ;
 int gm_layer_act ;
 int layer_switcher_tap (int ) ;

void dance_dwly_finished(qk_tap_dance_state_t *state, void *user_data) {
  dwltap_state.state = cur_dance(state);

  switch (dwltap_state.state) {
  case 129:
    if (active_layer == _DL) {
      layer_switcher_tap(_BL);
    } else {
      layer_switcher_tap(_DL);
    }
    break;
  case 130:
    layer_switcher_tap(_DL);
    break;
  case 131:
    layer_switcher_tap(_AL);
    break;
  case 128:
    if (gm_layer_act == 1) {
      gm_layer_act = 0;
      layer_switcher_tap(_BL);
    } else {
      gm_layer_act = 1;
      layer_switcher_tap(_GM);
    }
  default:
    layer_switcher_tap(_BL);
    break;
  }
}
