
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rgblight_setrgb (int,int,int) ;

void matrix_init_user(void) {
  rgblight_setrgb(0xFF, 0x00, 0x00);
}
