
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nkro; } ;


 int OLED_ROTATION_0 ;
 int adb_mouse_init () ;
 int backlight_init () ;
 int bootmagic () ;
 int fauxclicky_init () ;
 int keyboard_post_init_kb () ;
 TYPE_1__ keymap_config ;
 int magic () ;
 int matrix_init () ;
 int oled_init (int ) ;
 int pointing_device_init () ;
 int ps2_mouse_init () ;
 int qwiic_init () ;
 int rgblight_init () ;
 int serial_mouse_init () ;
 int steno_init () ;
 int timer_init () ;

void keyboard_init(void) {
    timer_init();
    matrix_init();
    magic();
    keyboard_post_init_kb();
}
