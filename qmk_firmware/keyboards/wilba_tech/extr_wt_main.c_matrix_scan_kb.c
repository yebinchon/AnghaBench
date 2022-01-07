
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int backlight_update_pwm_buffers () ;
 int matrix_scan_user () ;

void matrix_scan_kb(void)
{




 matrix_scan_user();
}
