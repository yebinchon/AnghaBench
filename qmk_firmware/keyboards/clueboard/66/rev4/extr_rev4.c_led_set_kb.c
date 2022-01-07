
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int GPIOA ;
 int GPIOB ;
 int USB_LED_CAPS_LOCK ;
 int USB_LED_NUM_LOCK ;
 int USB_LED_SCROLL_LOCK ;
 int palClearPad (int ,int) ;
 int palSetPad (int ,int) ;

void led_set_kb(uint8_t usb_led) {
    if (usb_led & (1<<USB_LED_NUM_LOCK)) {
        palSetPad(GPIOB, 13);
    } else {
        palClearPad(GPIOB, 13);
    }

    if (usb_led & (1<<USB_LED_CAPS_LOCK)) {
        palSetPad(GPIOA, 0);
        palSetPad(GPIOB, 14);
    } else {
        palClearPad(GPIOA, 0);
        palClearPad(GPIOB, 14);
    }

    if (usb_led & (1<<USB_LED_SCROLL_LOCK)) {
        palSetPad(GPIOA, 8);
    } else {
        palClearPad(GPIOA, 8);
    }
}
