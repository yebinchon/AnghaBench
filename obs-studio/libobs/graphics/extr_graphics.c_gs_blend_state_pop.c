
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct blend_state {int dest_a; int src_a; int dest_c; int src_c; int enabled; } ;
struct TYPE_3__ {int blend_state_stack; } ;
typedef TYPE_1__ graphics_t ;


 struct blend_state* da_end (int ) ;
 int da_pop_back (int ) ;
 int gs_blend_function_separate (int ,int ,int ,int ) ;
 int gs_enable_blending (int ) ;
 int gs_valid (char*) ;
 TYPE_1__* thread_graphics ;

void gs_blend_state_pop(void)
{
 graphics_t *graphics = thread_graphics;
 struct blend_state *state;

 if (!gs_valid("gs_blend_state_pop"))
  return;

 state = da_end(graphics->blend_state_stack);
 if (!state)
  return;

 gs_enable_blending(state->enabled);
 gs_blend_function_separate(state->src_c, state->dest_c, state->src_a,
       state->dest_a);

 da_pop_back(graphics->blend_state_stack);
}
