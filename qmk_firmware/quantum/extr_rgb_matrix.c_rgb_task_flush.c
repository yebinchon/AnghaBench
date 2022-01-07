
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int enable; } ;


 int SYNCING ;
 int rgb_last_effect ;
 int rgb_last_enable ;
 TYPE_1__ rgb_matrix_config ;
 int rgb_matrix_update_pwm_buffers () ;
 int rgb_task_state ;

__attribute__((used)) static void rgb_task_flush(uint8_t effect) {

    rgb_last_effect = effect;
    rgb_last_enable = rgb_matrix_config.enable;


    rgb_matrix_update_pwm_buffers();


    rgb_task_state = SYNCING;
}
