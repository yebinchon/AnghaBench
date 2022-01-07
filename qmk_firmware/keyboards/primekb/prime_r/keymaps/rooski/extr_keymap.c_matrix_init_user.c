
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int backlight_toggle () ;
 scalar_t__ get_backlight_level () ;

void matrix_init_user(void) {
  if (get_backlight_level() != 0){
    backlight_toggle();
  }
}
