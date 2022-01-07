
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int F4 ;
 scalar_t__ IS_LED_ON (int ,int ) ;
 int USB_LED_CAPS_LOCK ;
 int led_set_user (int ) ;
 int setPinInput (int ) ;
 int setPinOutput (int ) ;
 int writePinLow (int ) ;

void led_set_kb(uint8_t usb_led) {
    if (IS_LED_ON(usb_led, USB_LED_CAPS_LOCK)) {
        setPinOutput(F4);
        writePinLow(F4);
    } else {
        setPinInput(F4);
        writePinLow(F4);
 }

    led_set_user(usb_led);
}
