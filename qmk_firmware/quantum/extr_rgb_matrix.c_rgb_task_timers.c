
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_4__ {scalar_t__ any_key_hit; } ;
struct TYPE_3__ {size_t count; scalar_t__* tick; } ;


 scalar_t__ UINT16_MAX ;
 scalar_t__ UINT32_MAX ;
 TYPE_2__ g_rgb_counters ;
 TYPE_1__ last_hit_buffer ;
 int rgb_counters_buffer ;
 scalar_t__ timer_elapsed32 (int ) ;
 int timer_read32 () ;

__attribute__((used)) static void rgb_task_timers(void) {

    uint16_t deltaTime = timer_elapsed32(rgb_counters_buffer);
    rgb_counters_buffer = timer_read32();
    if (g_rgb_counters.any_key_hit < UINT32_MAX) {
        if (UINT32_MAX - deltaTime < g_rgb_counters.any_key_hit) {
            g_rgb_counters.any_key_hit = UINT32_MAX;
        } else {
            g_rgb_counters.any_key_hit += deltaTime;
        }
    }
}
