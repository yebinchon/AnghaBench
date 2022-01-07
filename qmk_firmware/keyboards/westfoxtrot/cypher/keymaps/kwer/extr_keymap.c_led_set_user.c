
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int F1 ;
 int F4 ;
 int F5 ;
 scalar_t__ IS_LED_ON (int ,int ) ;
 int USB_LED_NUM_LOCK ;
 int writePinHigh (int ) ;
 int writePinLow (int ) ;

void led_set_user(uint8_t usb_led) {

      if (IS_LED_ON(usb_led, USB_LED_NUM_LOCK)) {
        writePinHigh(F4);
        writePinHigh(F1);
        writePinHigh(F5);
    } else {
        writePinLow(F4);
        writePinLow(F1);
        writePinLow(F5);
    }
}
