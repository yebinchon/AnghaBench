
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int v; } ;
struct TYPE_4__ {TYPE_1__ hsv; } ;


 int RGB_MATRIX_VAL_STEP ;
 int eeconfig_update_rgb_matrix () ;
 int qsub8 (int ,int ) ;
 TYPE_2__ rgb_matrix_config ;

void rgb_matrix_decrease_val(void) {
    rgb_matrix_config.hsv.v = qsub8(rgb_matrix_config.hsv.v, RGB_MATRIX_VAL_STEP);
    eeconfig_update_rgb_matrix();
}
