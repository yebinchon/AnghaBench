
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {void* slock_led; void* clock_led; void* nlock_led; } ;


 void* IS_LED_ON (int ,int ) ;
 int USB_LED_CAPS_LOCK ;
 int USB_LED_NUM_LOCK ;
 int USB_LED_SCROLL_LOCK ;
 scalar_t__ is_keyboard_master () ;
 int led_set_user (int ) ;
 int led_toggle (int,void*) ;
 TYPE_1__ serial_m2s_buffer ;

void led_set_kb(uint8_t usb_led) {


 if (is_keyboard_master()) {

  serial_m2s_buffer.nlock_led = IS_LED_ON(usb_led, USB_LED_NUM_LOCK);
  serial_m2s_buffer.clock_led = IS_LED_ON(usb_led, USB_LED_CAPS_LOCK);
  serial_m2s_buffer.slock_led = IS_LED_ON(usb_led, USB_LED_SCROLL_LOCK);

  led_toggle(3, IS_LED_ON(usb_led, USB_LED_NUM_LOCK));
  led_toggle(4, IS_LED_ON(usb_led, USB_LED_CAPS_LOCK));
  led_toggle(5, IS_LED_ON(usb_led, USB_LED_SCROLL_LOCK));

 }

 led_set_user(usb_led);
}
