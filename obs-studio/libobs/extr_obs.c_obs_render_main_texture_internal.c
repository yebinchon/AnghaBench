
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct obs_core_video {int * render_texture; int texture_rendered; } ;
typedef int gs_texture_t ;
typedef int gs_eparam_t ;
typedef int gs_effect_t ;
typedef enum gs_blend_type { ____Placeholder_gs_blend_type } gs_blend_type ;
struct TYPE_2__ {struct obs_core_video video; } ;


 int OBS_EFFECT_DEFAULT ;
 int gs_blend_function_separate (int,int,int,int) ;
 int gs_blend_state_pop () ;
 int gs_blend_state_push () ;
 int gs_draw_sprite (int *,int ,int ,int ) ;
 int * gs_effect_get_param_by_name (int *,char*) ;
 scalar_t__ gs_effect_loop (int *,char*) ;
 int gs_effect_set_texture (int *,int *) ;
 TYPE_1__* obs ;
 int * obs_get_base_effect (int ) ;

__attribute__((used)) static void obs_render_main_texture_internal(enum gs_blend_type src_c,
          enum gs_blend_type dest_c,
          enum gs_blend_type src_a,
          enum gs_blend_type dest_a)
{
 struct obs_core_video *video;
 gs_texture_t *tex;
 gs_effect_t *effect;
 gs_eparam_t *param;

 if (!obs)
  return;

 video = &obs->video;
 if (!video->texture_rendered)
  return;

 tex = video->render_texture;
 effect = obs_get_base_effect(OBS_EFFECT_DEFAULT);
 param = gs_effect_get_param_by_name(effect, "image");
 gs_effect_set_texture(param, tex);

 gs_blend_state_push();
 gs_blend_function_separate(src_c, dest_c, src_a, dest_a);

 while (gs_effect_loop(effect, "Draw"))
  gs_draw_sprite(tex, 0, 0, 0);

 gs_blend_state_pop();
}
