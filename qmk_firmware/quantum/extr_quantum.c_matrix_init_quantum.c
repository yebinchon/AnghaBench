
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OUTPUT_AUTO ;
 int audio_init () ;
 int backlight_init_ports () ;
 int bootmagic_lite () ;
 int dip_switch_init () ;
 int eeconfig_init () ;
 int eeconfig_is_enabled () ;
 int encoder_init () ;
 int haptic_init () ;
 int led_matrix_init () ;
 int matrix_init_kb () ;
 int rgb_matrix_init () ;
 int set_output (int ) ;
 int unicode_input_mode_init () ;

void matrix_init_quantum() {



    if (!eeconfig_is_enabled()) {
        eeconfig_init();
    }
    matrix_init_kb();
}
