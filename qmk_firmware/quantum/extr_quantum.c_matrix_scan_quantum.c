
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int backlight_task () ;
 int dip_switch_read (int) ;
 int encoder_read () ;
 int haptic_task () ;
 int led_matrix_task () ;
 int matrix_scan_combo () ;
 int matrix_scan_kb () ;
 int matrix_scan_music () ;
 int matrix_scan_tap_dance () ;
 int rgb_matrix_task () ;

void matrix_scan_quantum() {
    matrix_scan_kb();
}
