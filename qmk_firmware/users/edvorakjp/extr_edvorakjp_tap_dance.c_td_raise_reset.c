
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qk_tap_dance_state_t ;
struct TYPE_2__ {int raise; } ;


 int NONE ;
 int _RAISE ;
 int layer_off (int ) ;
 TYPE_1__ td_status ;

void td_raise_reset(qk_tap_dance_state_t *state, void *user_data) {
  layer_off(_RAISE);
  td_status.raise = NONE;
}
