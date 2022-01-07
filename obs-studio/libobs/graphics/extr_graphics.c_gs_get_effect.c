
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int gs_effect_t ;
struct TYPE_2__ {int * cur_effect; } ;


 int gs_valid (char*) ;
 TYPE_1__* thread_graphics ;

gs_effect_t *gs_get_effect(void)
{
 if (!gs_valid("gs_get_effect"))
  return ((void*)0);

 return thread_graphics ? thread_graphics->cur_effect : ((void*)0);
}
