
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int layer_state_t ;


 int CAPS_LED_PIN ;
 int NUM_LED_PIN ;
 int SCROLL_LED_PIN ;
 scalar_t__ layer_state_cmp (int ,int) ;
 int writePinHigh (int ) ;
 int writePinLow (int ) ;

layer_state_t layer_state_set_user(layer_state_t state) {
    if (layer_state_cmp(state, 1)) {
        writePinHigh(CAPS_LED_PIN);
    } else {
        writePinLow(CAPS_LED_PIN);
    }
    if (layer_state_cmp(state, 2)) {
        writePinHigh(NUM_LED_PIN);
    } else {
        writePinLow(NUM_LED_PIN);
    }
    if (layer_state_cmp(state, 3)) {
        writePinHigh(SCROLL_LED_PIN);
    } else {
        writePinLow(SCROLL_LED_PIN);
    }
    return state;
}
