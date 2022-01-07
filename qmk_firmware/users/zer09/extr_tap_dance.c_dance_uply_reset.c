
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qk_tap_dance_state_t ;
struct TYPE_2__ {int state; } ;




 int _BL ;
 int layer_switcher_tap (int ) ;
 TYPE_1__ upltap_state ;

void dance_uply_reset(qk_tap_dance_state_t *state, void *user_data) {
  switch (upltap_state.state) {
  case 128:
    break;
  case 129:
  default:
    layer_switcher_tap(_BL);
    break;
  }
  upltap_state.state = 0;
}
