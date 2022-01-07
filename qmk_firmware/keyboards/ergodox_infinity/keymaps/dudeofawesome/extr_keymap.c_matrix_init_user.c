
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BACKLIGHT_LEVELS ;
 int backlight_enable () ;
 int backlight_level (int ) ;

void matrix_init_user() {
  backlight_enable();
  backlight_level(BACKLIGHT_LEVELS);
}
