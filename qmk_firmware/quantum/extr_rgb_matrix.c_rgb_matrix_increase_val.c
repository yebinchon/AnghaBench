
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ v; } ;
struct TYPE_4__ {TYPE_1__ hsv; } ;


 scalar_t__ RGB_MATRIX_MAXIMUM_BRIGHTNESS ;
 int RGB_MATRIX_VAL_STEP ;
 int eeconfig_update_rgb_matrix () ;
 scalar_t__ qadd8 (scalar_t__,int ) ;
 TYPE_2__ rgb_matrix_config ;

void rgb_matrix_increase_val(void) {
    rgb_matrix_config.hsv.v = qadd8(rgb_matrix_config.hsv.v, RGB_MATRIX_VAL_STEP);
    if (rgb_matrix_config.hsv.v > RGB_MATRIX_MAXIMUM_BRIGHTNESS) rgb_matrix_config.hsv.v = RGB_MATRIX_MAXIMUM_BRIGHTNESS;
    eeconfig_update_rgb_matrix();
}
