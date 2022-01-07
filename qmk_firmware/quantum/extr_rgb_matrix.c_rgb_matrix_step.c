
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode; } ;


 int RGB_MATRIX_EFFECT_MAX ;
 int STARTING ;
 int eeconfig_update_rgb_matrix () ;
 TYPE_1__ rgb_matrix_config ;
 int rgb_task_state ;

void rgb_matrix_step(void) {
    rgb_matrix_config.mode++;
    if (rgb_matrix_config.mode >= RGB_MATRIX_EFFECT_MAX) rgb_matrix_config.mode = 1;
    rgb_task_state = STARTING;
    eeconfig_update_rgb_matrix();
}
