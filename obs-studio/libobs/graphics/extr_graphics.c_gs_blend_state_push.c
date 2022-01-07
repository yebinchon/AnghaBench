
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cur_blend_state; int blend_state_stack; } ;
typedef TYPE_1__ graphics_t ;


 int da_push_back (int ,int *) ;
 int gs_valid (char*) ;
 TYPE_1__* thread_graphics ;

void gs_blend_state_push(void)
{
 graphics_t *graphics = thread_graphics;

 if (!gs_valid("gs_blend_state_push"))
  return;

 da_push_back(graphics->blend_state_stack, &graphics->cur_blend_state);
}
