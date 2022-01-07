
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int C4 ;
 int C5 ;
 int C6 ;
 scalar_t__ IS_LED_OFF (int ,int ) ;
 int USB_LED_CAPS_LOCK ;
 int USB_LED_NUM_LOCK ;
 int USB_LED_SCROLL_LOCK ;
 int writePinHigh (int ) ;
 int writePinLow (int ) ;

void led_set_kb(uint8_t usb_led) {
    if (IS_LED_OFF(usb_led, USB_LED_NUM_LOCK)) {
        writePinLow(C4);
    } else {
        writePinHigh(C4);
    }
    if (IS_LED_OFF(usb_led, USB_LED_CAPS_LOCK)) {
        writePinLow(C5);
    } else {
        writePinHigh(C5);
    }
    if (IS_LED_OFF(usb_led, USB_LED_SCROLL_LOCK)) {
        writePinLow(C6);
    } else {
        writePinHigh(C6);
    }
}
