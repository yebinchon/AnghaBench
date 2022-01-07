
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qk_tap_dance_state_t ;




 int _MOD ;
 int layer_off (int ) ;
 int td_state ;

void altlp_reset (qk_tap_dance_state_t *state, void *user_data) {
  switch (td_state) {
    case 128:
      break;
    case 129:
      layer_off(_MOD);
      break;
  }
}
