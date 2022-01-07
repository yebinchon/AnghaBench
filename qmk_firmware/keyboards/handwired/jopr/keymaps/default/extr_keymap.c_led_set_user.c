
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int F0 ;
 int F1 ;
 scalar_t__ IS_LED_ON (int ,int ) ;
 int KC_NUMLOCK ;
 int USB_LED_CAPS_LOCK ;
 int USB_LED_NUM_LOCK ;
 int USB_LED_SCROLL_LOCK ;
 int tap_code (int ) ;
 int writePinHigh (int ) ;
 int writePinLow (int ) ;

void led_set_user(uint8_t usb_led) {

    if (IS_LED_ON(usb_led, USB_LED_CAPS_LOCK)) {
        writePinHigh(F1);
 } else {
        writePinLow(F1);
    }

    if (IS_LED_ON(usb_led, USB_LED_SCROLL_LOCK)) {
        writePinHigh(F0);
 } else {
        writePinLow(F0);
    }

    if (!(IS_LED_ON(usb_led, USB_LED_NUM_LOCK))) {
        tap_code(KC_NUMLOCK);
    }
}
