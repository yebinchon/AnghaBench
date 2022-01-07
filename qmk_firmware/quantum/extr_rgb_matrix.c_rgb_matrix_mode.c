
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int mode; } ;


 int STARTING ;
 int eeconfig_update_rgb_matrix () ;
 TYPE_1__ rgb_matrix_config ;
 int rgb_task_state ;

void rgb_matrix_mode(uint8_t mode) {
    rgb_matrix_config.mode = mode;
    rgb_task_state = STARTING;
    eeconfig_update_rgb_matrix();
}
