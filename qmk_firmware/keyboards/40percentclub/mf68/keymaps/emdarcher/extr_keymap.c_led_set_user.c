
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int B0 ;
 int D5 ;
 scalar_t__ IS_LED_ON (int ,int ) ;
 int USB_LED_CAPS_LOCK ;
 int setPinInput (int ) ;
 int setPinOutput (int ) ;
 int writePinLow (int ) ;

void led_set_user(uint8_t usb_led){

    if(IS_LED_ON(usb_led, USB_LED_CAPS_LOCK)){

        setPinOutput(B0);
        writePinLow(B0);
        setPinOutput(D5);
        writePinLow(D5);
    } else {

        setPinInput(B0);
        writePinLow(B0);
        setPinInput(D5);
        writePinLow(D5);
    }
}
