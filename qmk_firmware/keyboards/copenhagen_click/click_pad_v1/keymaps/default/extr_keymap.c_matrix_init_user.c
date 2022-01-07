
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int backlight_enable () ;
 int breathing_enable () ;

void matrix_init_user(void) {
  backlight_enable();
  breathing_enable();

}
