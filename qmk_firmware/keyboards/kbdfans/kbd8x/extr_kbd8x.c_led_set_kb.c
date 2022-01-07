
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int USB_LED_CAPS_LOCK ;
 int USB_LED_NUM_LOCK ;
 int USB_LED_SCROLL_LOCK ;
 int caps_led_off () ;
 int caps_led_on () ;
 int led_set_user (int) ;
 int num_led_off () ;
 int num_led_on () ;
 int scroll_led_off () ;
 int scroll_led_on () ;

void led_set_kb(uint8_t usb_led) {


  if(usb_led & (1<<USB_LED_NUM_LOCK))
    {
        num_led_on();
    } else {
        num_led_off();
    }

    if(usb_led & (1<<USB_LED_CAPS_LOCK))
    {
        caps_led_on();
    } else {
        caps_led_off();
    }

    if(usb_led & (1<<USB_LED_SCROLL_LOCK))
    {
        scroll_led_on();
    } else {
        scroll_led_off();
    }

 led_set_user(usb_led);
}
