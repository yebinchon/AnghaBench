
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qk_tap_dance_state_t ;
struct TYPE_2__ {int raise; } ;





 int _RAISE ;
 int cur_dance (int *) ;
 int layer_on (int ) ;
 int set_japanese_mode (int) ;
 TYPE_1__ td_status ;

void td_raise_finished(qk_tap_dance_state_t *state, void *user_data) {
  td_status.raise = cur_dance(state);
  switch(td_status.raise) {
    case 130:

    case 128:
      set_japanese_mode(1);
      break;
    case 129:
      break;
  }
  layer_on(_RAISE);
}
