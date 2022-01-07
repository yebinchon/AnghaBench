
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int h; } ;
struct TYPE_4__ {TYPE_1__ hsv; } ;


 scalar_t__ RGB_MATRIX_HUE_STEP ;
 int eeconfig_update_rgb_matrix () ;
 TYPE_2__ rgb_matrix_config ;

void rgb_matrix_decrease_hue(void) {
    rgb_matrix_config.hsv.h -= RGB_MATRIX_HUE_STEP;
    eeconfig_update_rgb_matrix();
}
