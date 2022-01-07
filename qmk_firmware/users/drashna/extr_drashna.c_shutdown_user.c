
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rgb_matrix_set_color_all (int,int,int) ;
 int rgb_matrix_update_pwm_buffers () ;
 int rgblight_enable_noeeprom () ;
 int rgblight_mode_noeeprom (int) ;
 int rgblight_setrgb_red () ;
 int shutdown_keymap () ;

void shutdown_user(void) {
    shutdown_keymap();
}
