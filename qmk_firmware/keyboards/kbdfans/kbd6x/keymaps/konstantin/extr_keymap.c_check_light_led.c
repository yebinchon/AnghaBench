
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 scalar_t__ IS_LAYER_ON (int ) ;
 scalar_t__ IS_LED_ON (int ,int ) ;
 int L_FN ;
 int USB_LED_CAPS_LOCK ;
 int caps_light () ;
 int fn_light () ;
 int restore_light () ;

__attribute__((used)) static void check_light_led(uint8_t usb_led) {
    if (IS_LED_ON(usb_led, USB_LED_CAPS_LOCK)) {
        caps_light();
    } else if (IS_LAYER_ON(L_FN)) {
        fn_light();
    } else {
        restore_light();
    }
}
