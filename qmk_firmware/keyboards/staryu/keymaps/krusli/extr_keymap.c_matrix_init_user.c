
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int backlight_led_on (int) ;

void matrix_init_user(void) {
  for (int i=0; i<5; i++) {
    backlight_led_on(i);
  }
}
