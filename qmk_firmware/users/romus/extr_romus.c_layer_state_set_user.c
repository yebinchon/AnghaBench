
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int biton32 (int ) ;
 int layer_state_set_keymap (int ) ;
 int rgblight_change (int ) ;

uint32_t layer_state_set_user(uint32_t state) {

    state = layer_state_set_keymap (state);




    return state;
}
