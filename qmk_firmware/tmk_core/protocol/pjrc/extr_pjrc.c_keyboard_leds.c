
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int usb_keyboard_leds ;

__attribute__((used)) static uint8_t keyboard_leds(void) { return usb_keyboard_leds; }
