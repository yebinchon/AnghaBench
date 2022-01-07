
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qk_tap_dance_state_t ;
struct TYPE_2__ {int state; } ;




 int _BL ;
 int _UL ;
 int active_layer ;
 int cur_dance (int *) ;
 int layer_switcher_tap (int ) ;
 TYPE_1__ upltap_state ;

void dance_uply_finished(qk_tap_dance_state_t *state, void *user_data) {
  upltap_state.state = cur_dance(state);

  switch (upltap_state.state) {
  case 128:
    if (active_layer == _UL) {
      layer_switcher_tap(_BL);
    } else {
      layer_switcher_tap(_UL);
    }
    break;
  case 129:
    layer_switcher_tap(_UL);
    break;
  default:
    layer_switcher_tap(_BL);
    break;
  }
}
