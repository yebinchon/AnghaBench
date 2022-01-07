
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int FLED_CAPS_H ;
 int FLED_CAPS_S ;
 int USB_LED_CAPS_LOCK ;
 int fled_val ;
 int * fleds ;
 int led_set_user (int) ;
 int rgblight_set () ;
 int sethsv (int ,int ,int ,int *) ;
 int setrgb (int ,int ,int ,int *) ;

void led_set_kb(uint8_t usb_led) {

    if (usb_led & (1 << USB_LED_CAPS_LOCK)) {
        sethsv(FLED_CAPS_H, FLED_CAPS_S, fled_val, &fleds[0]);
    } else {
        setrgb(0, 0, 0, &fleds[0]);
    }

    rgblight_set();
 led_set_user(usb_led);
}
