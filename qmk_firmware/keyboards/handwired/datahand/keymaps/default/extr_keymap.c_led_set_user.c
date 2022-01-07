
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int LED_CAPS_LOCK ;
 int LED_NUM_LOCK ;
 int LED_SCROLL_LOCK ;
 int USB_LED_CAPS_LOCK ;
 int USB_LED_NUM_LOCK ;
 int USB_LED_SCROLL_LOCK ;
 int lock_led_set (int,int ) ;

void led_set_user(uint8_t usb_led) {
  lock_led_set(usb_led & (1<<USB_LED_NUM_LOCK), LED_NUM_LOCK);
  lock_led_set(usb_led & (1<<USB_LED_CAPS_LOCK), LED_CAPS_LOCK);
  lock_led_set(usb_led & (1<<USB_LED_SCROLL_LOCK), LED_SCROLL_LOCK);
}
