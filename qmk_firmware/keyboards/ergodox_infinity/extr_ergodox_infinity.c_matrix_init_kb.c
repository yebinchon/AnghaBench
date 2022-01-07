
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lcd_backlight_hal_init () ;
 int matrix_init_user () ;

void matrix_init_kb(void) {



 matrix_init_user();


 lcd_backlight_hal_init();

}
