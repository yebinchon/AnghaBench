
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int PORTD ;
 int USB_LED_CAPS_LOCK ;
 int USB_LED_NUM_LOCK ;
 int USB_LED_SCROLL_LOCK ;
 int led_set_user (int) ;

void led_set_kb(uint8_t usb_led) {



   uint8_t leds = 0xF0;
    if (usb_led & 1 << USB_LED_NUM_LOCK)
        leds &= ~0x10;
    if (usb_led & 1 << USB_LED_CAPS_LOCK)
        leds &= ~0x80;
    if (usb_led & 1 << USB_LED_SCROLL_LOCK)
        leds &= ~0x20;
    PORTD = (PORTD & 0x0F) | leds;

 led_set_user(usb_led);

}
