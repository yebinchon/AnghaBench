
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tick; } ;


 scalar_t__ RGB_MATRIX_LED_FLUSH_LIMIT ;
 int STARTING ;
 TYPE_1__ g_rgb_counters ;
 int rgb_task_state ;
 scalar_t__ timer_elapsed32 (int ) ;

__attribute__((used)) static void rgb_task_sync(void) {

    if (timer_elapsed32(g_rgb_counters.tick) >= RGB_MATRIX_LED_FLUSH_LIMIT) rgb_task_state = STARTING;
}
