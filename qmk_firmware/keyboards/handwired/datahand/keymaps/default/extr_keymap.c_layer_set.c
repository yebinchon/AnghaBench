
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int FUNCTION_ARROWS ;
 int FUNCTION_MOUSE ;
 int LED_FN ;
 int LED_NAS ;
 int LED_NORMAL ;
 int LED_TENKEY ;
 int NAS ;
 int NAS_NUMLOCK ;
 int NAS_TENKEY ;
 int NAS_TENKEY_NUMLOCK ;
 int NORMAL ;
 int layer_off (int ) ;
 int layer_on (int ) ;
 scalar_t__ layer_state_is (int ) ;
 int mode_led_set (int) ;
 scalar_t__ tenkey_enabled ;

__attribute__((used)) static void layer_set(bool on, uint8_t layer) {
  if (on) {
    layer_on(layer);
  } else {
    layer_off(layer);
  }

  if (layer_state_is(NAS) || layer_state_is(NAS_NUMLOCK) || layer_state_is(NAS_TENKEY) || layer_state_is(NAS_TENKEY_NUMLOCK)) {
    if (tenkey_enabled) {
      mode_led_set(LED_NAS | LED_TENKEY);
    } else {
      mode_led_set(LED_NAS);
    }
  } else if (layer_state_is(FUNCTION_MOUSE) || layer_state_is(FUNCTION_ARROWS)) {
    mode_led_set(LED_FN);
  } else if (layer_state_is(NORMAL)) {
    mode_led_set(LED_NORMAL);
  }
}
