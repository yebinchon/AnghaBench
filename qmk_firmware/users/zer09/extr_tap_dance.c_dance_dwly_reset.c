
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qk_tap_dance_state_t ;
struct TYPE_2__ {int state; } ;






 int _BL ;
 TYPE_1__ dwltap_state ;
 int layer_switcher_tap (int ) ;

void dance_dwly_reset(qk_tap_dance_state_t *state, void *user_data) {
  switch (dwltap_state.state) {
  case 129:
    break;
  case 130:
  case 131:
  case 128:
  default:
    layer_switcher_tap(_BL);
    break;
  }
  dwltap_state.state = 0;
}
