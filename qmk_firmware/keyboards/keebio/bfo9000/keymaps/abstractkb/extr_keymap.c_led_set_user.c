
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int RGBLIGHT_MODE_ALTERNATING ;
 int USB_LED_CAPS_LOCK ;
 int layer_state ;
 int layer_state_set_user (int ) ;
 int rgblight_mode_noeeprom (int ) ;

void led_set_user(uint8_t usb_led) {
  if (usb_led & (1<<USB_LED_CAPS_LOCK)) {
    rgblight_mode_noeeprom(RGBLIGHT_MODE_ALTERNATING);
  } else {
    layer_state_set_user(layer_state);
  }
}
