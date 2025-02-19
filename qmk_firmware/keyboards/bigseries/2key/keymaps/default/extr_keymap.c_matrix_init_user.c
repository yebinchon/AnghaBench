
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int initialized ;
 int rgblight_disable () ;
 int rgblight_enable () ;
 int rgblight_init () ;
 int rgblight_mode (int) ;
 int rgblight_sethsv (int ,int ,int) ;

void matrix_init_user(void) {
  if (!initialized){

    rgblight_disable();
    rgblight_init();

    rgblight_enable();
    rgblight_sethsv(0,0,255);
    rgblight_mode(35);
    initialized = 1;
  }
}
