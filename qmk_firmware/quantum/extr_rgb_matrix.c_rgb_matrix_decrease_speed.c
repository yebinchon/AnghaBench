
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int speed; } ;


 int RGB_MATRIX_SPD_STEP ;
 int eeconfig_update_rgb_matrix () ;
 int qsub8 (int ,int ) ;
 TYPE_1__ rgb_matrix_config ;

void rgb_matrix_decrease_speed(void) {
    rgb_matrix_config.speed = qsub8(rgb_matrix_config.speed, RGB_MATRIX_SPD_STEP);
    eeconfig_update_rgb_matrix();
}
