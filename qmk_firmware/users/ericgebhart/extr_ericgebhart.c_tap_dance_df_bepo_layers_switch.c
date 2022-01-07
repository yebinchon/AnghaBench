
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int count; } ;
typedef TYPE_1__ qk_tap_dance_state_t ;


 int BEPO ;
 int DVORAK_ON_BEPO ;
 int LAYERS ;
 int layer_invert (int ) ;
 int reset_tap_dance (TYPE_1__*) ;
 int switch_default_layer (int ) ;

void tap_dance_df_bepo_layers_switch (qk_tap_dance_state_t *state, void *user_data) {
      switch(state->count){
      case 1:
        switch_default_layer(DVORAK_ON_BEPO);
        break;
      case 2:
        switch_default_layer(BEPO);
        break;
      case 3:
        layer_invert(LAYERS);
        break;
      default:
        break;
      }
      reset_tap_dance(state);
}
