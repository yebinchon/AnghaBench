
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int USB_LED_NUM_LOCK ;
 int rgblight_sethsv_at (int ,int ,int,int) ;

void led_set_user(uint8_t usb_led) {
  if (usb_led & (1 << USB_LED_NUM_LOCK)) {

    rgblight_sethsv_at(0, 0, 127, 1);
  } else {
    rgblight_sethsv_at(0, 0, 0, 1);
  }
}
