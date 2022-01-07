
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int USB_LED_CAPS_LOCK ;
 int USB_LED_NUM_LOCK ;
 int USB_LED_SCROLL_LOCK ;
 int host_keyboard_leds () ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;

const char *read_host_led_state(void) {
  static char led_str[24];
  strcpy(led_str, (host_keyboard_leds() & (1<<USB_LED_NUM_LOCK)) ? "NMLK" : "    ");
  strcat(led_str, (host_keyboard_leds() & (1<<USB_LED_CAPS_LOCK)) ? " CAPS" : "    ");
  strcat(led_str, (host_keyboard_leds() & (1<<USB_LED_SCROLL_LOCK)) ? " SCLK" : "     ");
  return led_str;
}
