
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int USB_LED_NUM_LOCK ;
 int numlock_on ;

void led_set_keymap(uint8_t usb_led) {
  if (usb_led & (1<<USB_LED_NUM_LOCK)) {
    numlock_on = 1;
  }
  else {
    numlock_on = 0;
  }
}
