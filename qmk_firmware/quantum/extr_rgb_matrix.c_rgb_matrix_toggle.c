
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int enable; } ;


 int STARTING ;
 int eeconfig_update_rgb_matrix () ;
 TYPE_1__ rgb_matrix_config ;
 int rgb_task_state ;

void rgb_matrix_toggle(void) {
    rgb_matrix_config.enable ^= 1;
    rgb_task_state = STARTING;
    eeconfig_update_rgb_matrix();
}
