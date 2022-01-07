
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int CAPSLOCKLEDPIN ;
 scalar_t__ IS_LED_ON (int ,int ) ;
 int NUMLOCKLEDPIN ;
 int SCROLLLOCKLEDPIN ;
 int USB_LED_CAPS_LOCK ;
 int USB_LED_NUM_LOCK ;
 int USB_LED_SCROLL_LOCK ;
 int writePinHigh (int ) ;
 int writePinLow (int ) ;

void led_set_user(uint8_t usb_led) {
  if (IS_LED_ON(usb_led, USB_LED_NUM_LOCK)) {
    writePinHigh(NUMLOCKLEDPIN);
  } else {
    writePinLow(NUMLOCKLEDPIN);
  }

  if (IS_LED_ON(usb_led, USB_LED_CAPS_LOCK)) {
    writePinHigh(CAPSLOCKLEDPIN);
  } else {
    writePinLow(CAPSLOCKLEDPIN);
  }

  if (IS_LED_ON(usb_led, USB_LED_SCROLL_LOCK)) {
    writePinHigh(SCROLLLOCKLEDPIN);
  } else {
    writePinLow(SCROLLLOCKLEDPIN);
  }
}
