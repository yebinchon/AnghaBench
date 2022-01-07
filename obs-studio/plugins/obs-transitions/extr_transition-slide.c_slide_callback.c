
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vec2 {int dummy; } ;
struct slide_info {int effect; int tex_b_dir_param; int tex_a_dir_param; int b_param; int a_param; struct vec2 dir; } ;
typedef int gs_texture_t ;


 float cubic_ease_in_out (float) ;
 int gs_draw_sprite (int *,int ,int ,int ) ;
 scalar_t__ gs_effect_loop (int ,char*) ;
 int gs_effect_set_texture (int ,int *) ;
 int gs_effect_set_vec2 (int ,struct vec2*) ;
 int vec2_mulf (struct vec2*,struct vec2*,float) ;

__attribute__((used)) static void slide_callback(void *data, gs_texture_t *a, gs_texture_t *b,
      float t, uint32_t cx, uint32_t cy)
{
 struct slide_info *slide = data;

 struct vec2 tex_a_dir = slide->dir;
 struct vec2 tex_b_dir = slide->dir;

 t = cubic_ease_in_out(t);

 vec2_mulf(&tex_a_dir, &tex_a_dir, t);
 vec2_mulf(&tex_b_dir, &tex_b_dir, 1.0f - t);

 gs_effect_set_texture(slide->a_param, a);
 gs_effect_set_texture(slide->b_param, b);

 gs_effect_set_vec2(slide->tex_a_dir_param, &tex_a_dir);
 gs_effect_set_vec2(slide->tex_b_dir_param, &tex_b_dir);

 while (gs_effect_loop(slide->effect, "Slide"))
  gs_draw_sprite(((void*)0), 0, cx, cy);
}
