
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vec2 {int dummy; } ;
struct swipe_info {int effect; int swipe_param; scalar_t__ swipe_in; int b_param; int a_param; struct vec2 dir; } ;
typedef int gs_texture_t ;


 float cubic_ease_in_out (float) ;
 int gs_draw_sprite (int *,int ,int ,int ) ;
 scalar_t__ gs_effect_loop (int ,char*) ;
 int gs_effect_set_texture (int ,int *) ;
 int gs_effect_set_vec2 (int ,struct vec2*) ;
 int vec2_mulf (struct vec2*,struct vec2*,float) ;
 int vec2_neg (struct vec2*,struct vec2*) ;

__attribute__((used)) static void swipe_callback(void *data, gs_texture_t *a, gs_texture_t *b,
      float t, uint32_t cx, uint32_t cy)
{
 struct swipe_info *swipe = data;
 struct vec2 swipe_val = swipe->dir;

 if (swipe->swipe_in)
  vec2_neg(&swipe_val, &swipe_val);

 t = cubic_ease_in_out(t);

 vec2_mulf(&swipe_val, &swipe_val, swipe->swipe_in ? 1.0f - t : t);

 gs_effect_set_texture(swipe->a_param, swipe->swipe_in ? b : a);
 gs_effect_set_texture(swipe->b_param, swipe->swipe_in ? a : b);
 gs_effect_set_vec2(swipe->swipe_param, &swipe_val);

 while (gs_effect_loop(swipe->effect, "Swipe"))
  gs_draw_sprite(((void*)0), 0, cx, cy);
}
