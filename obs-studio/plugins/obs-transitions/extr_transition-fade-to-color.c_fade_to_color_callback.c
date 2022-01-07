
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fade_to_color_info {float switch_point; int effect; int color; int ep_color; int ep_swp; int ep_tex; } ;
typedef int gs_texture_t ;


 int gs_draw_sprite (int *,int ,int ,int ) ;
 scalar_t__ gs_effect_loop (int ,char*) ;
 int gs_effect_set_float (int ,float) ;
 int gs_effect_set_texture (int ,int *) ;
 int gs_effect_set_vec4 (int ,int *) ;
 float smoothstep (float,float,float) ;

__attribute__((used)) static void fade_to_color_callback(void *data, gs_texture_t *a, gs_texture_t *b,
       float t, uint32_t cx, uint32_t cy)
{
 struct fade_to_color_info *fade_to_color = data;

 float sa = smoothstep(0.0f, fade_to_color->switch_point, t);
 float sb = smoothstep(fade_to_color->switch_point, 1.0f, t);

 float swp = t < fade_to_color->switch_point ? sa : 1.0f - sb;

 gs_effect_set_texture(fade_to_color->ep_tex,
         t < fade_to_color->switch_point ? a : b);
 gs_effect_set_float(fade_to_color->ep_swp, swp);
 gs_effect_set_vec4(fade_to_color->ep_color, &fade_to_color->color);

 while (gs_effect_loop(fade_to_color->effect, "FadeToColor"))
  gs_draw_sprite(((void*)0), 0, cx, cy);
}
