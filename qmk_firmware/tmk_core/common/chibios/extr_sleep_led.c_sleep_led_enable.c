
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int USB_LED_CAPS_LOCK ;
 int led_set (int) ;

void sleep_led_enable(void) { led_set(1 << USB_LED_CAPS_LOCK); }
