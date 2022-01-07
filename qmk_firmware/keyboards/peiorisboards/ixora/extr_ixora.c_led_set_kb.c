
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int A10 ;
 int A8 ;
 int A9 ;
 scalar_t__ IS_LED_ON (int ,int ) ;
 int USB_LED_CAPS_LOCK ;
 int USB_LED_NUM_LOCK ;
 int USB_LED_SCROLL_LOCK ;
 int led_set_user (int ) ;
 int writePinHigh (int ) ;
 int writePinLow (int ) ;

void led_set_kb(uint8_t usb_led) {
    if (IS_LED_ON(usb_led, USB_LED_CAPS_LOCK)) {
        writePinHigh(A10);
    } else {
        writePinLow(A10);
    }
    if (IS_LED_ON(usb_led, USB_LED_NUM_LOCK)) {
        writePinHigh(A9);
    } else {
        writePinLow(A9);
    }
    if (IS_LED_ON(usb_led, USB_LED_SCROLL_LOCK)) {
        writePinHigh(A8);
    } else {
        writePinLow(A8);
    }
    led_set_user(usb_led);
}
