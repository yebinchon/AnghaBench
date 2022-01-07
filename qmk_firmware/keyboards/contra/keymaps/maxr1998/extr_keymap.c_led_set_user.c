
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int KC_NUMLOCK ;
 int USB_LED_NUM_LOCK ;
 int register_code (int ) ;
 int unregister_code (int ) ;

void led_set_user(uint8_t usb_led) {

  if (!(usb_led & (1<<USB_LED_NUM_LOCK))) {
    register_code(KC_NUMLOCK);
    unregister_code(KC_NUMLOCK);
  }
}
