
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int GPIOB ;
 int USB_LED_CAPS_LOCK ;
 int palClearPad (int ,int) ;
 int palSetPad (int ,int) ;
 int printf (char*,int) ;

void led_set_kb(uint8_t usb_led) {
    printf("led_set_kb(%d)\n", usb_led);
    if (usb_led & (1<<USB_LED_CAPS_LOCK)) {

        palSetPad(GPIOB, 7);
    } else {

        palClearPad(GPIOB, 7);
    }
}
