
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 scalar_t__ LAYER_ON (int ) ;
 int SYSLEDS ;
 int led_1_off () ;
 int led_1_on () ;
 int led_2_off () ;
 int led_2_on () ;
 int led_3_off () ;
 int led_3_on () ;
 int sys_led_mask_caps_lock ;
 int sys_led_mask_num_lock ;
 int sys_led_mask_scroll_lock ;
 int sys_led_state ;

void led_set_user(uint8_t usb_led) {
  sys_led_state = usb_led;
  if (LAYER_ON(SYSLEDS)) {
    if (sys_led_state & sys_led_mask_caps_lock) {
      led_1_on();
    } else {
      led_1_off();
    }
    if (sys_led_state & sys_led_mask_num_lock) {
      led_2_on();
    } else {
      led_2_off();
    }
    if (sys_led_state & sys_led_mask_scroll_lock) {
      led_3_on();
    } else {
      led_3_off();
    }
  }
}
