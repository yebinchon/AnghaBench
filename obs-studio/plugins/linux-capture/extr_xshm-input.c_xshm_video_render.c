
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int gs_eparam_t ;
typedef int gs_effect_t ;
struct TYPE_2__ {int cursor; scalar_t__ show_cursor; int texture; } ;


 int OBS_EFFECT_DEFAULT ;
 int OBS_EFFECT_OPAQUE ;
 int XSHM_DATA (void*) ;
 TYPE_1__* data ;
 int gs_draw_sprite (int ,int ,int ,int ) ;
 int * gs_effect_get_param_by_name (int *,char*) ;
 scalar_t__ gs_effect_loop (int *,char*) ;
 int gs_effect_set_texture (int *,int ) ;
 int * obs_get_base_effect (int ) ;
 int xcb_xcursor_render (int ) ;

__attribute__((used)) static void xshm_video_render(void *vptr, gs_effect_t *effect)
{
 XSHM_DATA(vptr);

 effect = obs_get_base_effect(OBS_EFFECT_OPAQUE);

 if (!data->texture)
  return;

 gs_eparam_t *image = gs_effect_get_param_by_name(effect, "image");
 gs_effect_set_texture(image, data->texture);

 while (gs_effect_loop(effect, "Draw")) {
  gs_draw_sprite(data->texture, 0, 0, 0);
 }

 if (data->show_cursor) {
  effect = obs_get_base_effect(OBS_EFFECT_DEFAULT);

  while (gs_effect_loop(effect, "Draw")) {
   xcb_xcursor_render(data->cursor);
  }
 }
}
