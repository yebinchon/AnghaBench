
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UC_LNX ;
 int _DV ;
 int base_hue ;
 int base_mod ;
 scalar_t__ base_sat ;
 int base_tog ;
 int base_val ;
 int matrix_init_keymap () ;
 int rgblight_disable () ;
 int rgblight_enable () ;
 int rgblight_loadBase () ;
 int rgblight_mode (int) ;
 int rgblight_sethsv (int,scalar_t__,int) ;
 int set_single_persistent_default_layer (int ) ;
 int set_unicode_input_mode (int ) ;

void matrix_init_user (void) {


    matrix_init_keymap();







    set_single_persistent_default_layer(_DV);
}
