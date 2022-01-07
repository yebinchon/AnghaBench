
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int layer_state_t ;


 int LAYER_ADJUST ;
 int LAYER_LOWER ;
 int LAYER_RAISE ;
 int update_tri_layer_state (int ,int ,int ,int ) ;

layer_state_t layer_state_set_user(layer_state_t state) {
    return update_tri_layer_state(state, LAYER_LOWER, LAYER_RAISE, LAYER_ADJUST);
}
