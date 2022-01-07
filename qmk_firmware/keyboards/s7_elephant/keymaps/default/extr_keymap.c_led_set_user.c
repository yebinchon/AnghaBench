
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int USB_LED_CAPS_LOCK ;
 int host_keyboard_leds () ;
 int rgblight_disable_noeeprom () ;
 int rgblight_enable_noeeprom () ;
 int rgblight_sethsv_noeeprom (int ,int ,int) ;

void led_set_user(uint8_t usb_led) {

    if (host_keyboard_leds() & (1 << USB_LED_CAPS_LOCK)) {
        rgblight_enable_noeeprom();
        rgblight_sethsv_noeeprom(0, 0, 80);
    } else {
        rgblight_sethsv_noeeprom(0, 0, 80);
        rgblight_disable_noeeprom();
    }
}
