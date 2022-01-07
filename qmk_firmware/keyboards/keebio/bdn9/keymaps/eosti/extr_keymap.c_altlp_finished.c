
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qk_tap_dance_state_t ;




 int _MACRO ;
 int _MOD ;
 int cur_dance (int *) ;
 int layer_on (int ) ;
 int td_state ;

void altlp_finished (qk_tap_dance_state_t *state, void *user_data) {
  td_state = cur_dance(state);
  switch (td_state) {
    case 128:
      layer_on(_MACRO);
      break;
    case 129:
      layer_on(_MOD);
      break;
  }
}
