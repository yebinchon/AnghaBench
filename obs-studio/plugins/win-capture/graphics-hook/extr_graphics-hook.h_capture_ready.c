
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int frame_interval; } ;


 scalar_t__ capture_active () ;
 scalar_t__ frame_ready (int ) ;
 TYPE_1__* global_hook_info ;

__attribute__((used)) static inline bool capture_ready(void)
{
 return capture_active() &&
        frame_ready(global_hook_info->frame_interval);
}
