
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct obs_core_hotkeys {TYPE_1__* platform_context; } ;
struct TYPE_2__ {int * base_keysyms; } ;


 size_t OBS_KEY_LAST_VALUE ;
 int get_keysym (size_t) ;

__attribute__((used)) static inline void fill_base_keysyms(struct obs_core_hotkeys *hotkeys)
{
 for (size_t i = 0; i < OBS_KEY_LAST_VALUE; i++)
  hotkeys->platform_context->base_keysyms[i] = get_keysym(i);
}
