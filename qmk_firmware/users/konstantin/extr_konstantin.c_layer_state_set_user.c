
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int IS_HOST_LED_ON (int ) ;
 int IS_LAYER_ON_STATE (int ,int ) ;
 int KC_NLCK ;
 int L_NUMPAD ;
 int USB_LED_NUM_LOCK ;
 int layer_state_set_keymap (int ) ;
 int tap_code (int ) ;

uint32_t layer_state_set_user(uint32_t state) {
    state = layer_state_set_keymap(state);
    return state;
}
