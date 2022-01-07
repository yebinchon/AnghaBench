
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int layer_state_t ;


 int _ADJUST ;
 int _LOWER ;
 int _RAISE ;
 int layer_state_set_keymap (int ) ;
 int layer_state_set_rgb (int ) ;
 int update_tri_layer_state (int ,int ,int ,int ) ;

layer_state_t layer_state_set_user(layer_state_t state) {
    state = update_tri_layer_state(state, _RAISE, _LOWER, _ADJUST);



    return layer_state_set_keymap(state);
}
