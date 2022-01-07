
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int IS_LED_ON (int ,int ) ;
 int NUMLOCK_PIN ;
 int USB_LED_NUM_LOCK ;
 int led_set_user (int ) ;
 int writePin (int ,int ) ;

void led_set_kb(uint8_t usb_led) {
    writePin(NUMLOCK_PIN, IS_LED_ON(usb_led, USB_LED_NUM_LOCK));
    led_set_user(usb_led);
}
