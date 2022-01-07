
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fade_info {int effect; int fade_param; int b_param; int a_param; } ;
typedef int gs_texture_t ;


 int gs_draw_sprite (int *,int ,int ,int ) ;
 scalar_t__ gs_effect_loop (int ,char*) ;
 int gs_effect_set_float (int ,float) ;
 int gs_effect_set_texture (int ,int *) ;

__attribute__((used)) static void fade_callback(void *data, gs_texture_t *a, gs_texture_t *b, float t,
     uint32_t cx, uint32_t cy)
{
 struct fade_info *fade = data;

 gs_effect_set_texture(fade->a_param, a);
 gs_effect_set_texture(fade->b_param, b);
 gs_effect_set_float(fade->fade_param, t);

 while (gs_effect_loop(fade->effect, "Fade"))
  gs_draw_sprite(((void*)0), 0, cx, cy);
}
