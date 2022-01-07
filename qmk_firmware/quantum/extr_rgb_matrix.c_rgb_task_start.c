
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int tick; } ;
struct TYPE_3__ {scalar_t__ iter; } ;


 int RENDERING ;
 int g_last_hit_tracker ;
 TYPE_2__ g_rgb_counters ;
 int last_hit_buffer ;
 int rgb_counters_buffer ;
 TYPE_1__ rgb_effect_params ;
 int rgb_task_state ;

__attribute__((used)) static void rgb_task_start(void) {

    rgb_effect_params.iter = 0;


    g_rgb_counters.tick = rgb_counters_buffer;





    rgb_task_state = RENDERING;
}
