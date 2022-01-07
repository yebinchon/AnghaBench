
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpu_delay_filter_data {int cy; int cx; int frames; } ;
struct frame {int render; } ;
typedef int gs_texture_t ;
typedef int gs_eparam_t ;
typedef int gs_effect_t ;
typedef int frame ;


 int OBS_EFFECT_DEFAULT ;
 int circlebuf_peek_front (int *,struct frame*,int) ;
 int gs_draw_sprite (int *,int ,int ,int ) ;
 int * gs_effect_get_param_by_name (int *,char*) ;
 scalar_t__ gs_effect_loop (int *,char*) ;
 int gs_effect_set_texture (int *,int *) ;
 int * gs_texrender_get_texture (int ) ;
 int * obs_get_base_effect (int ) ;

__attribute__((used)) static void draw_frame(struct gpu_delay_filter_data *f)
{
 struct frame frame;
 circlebuf_peek_front(&f->frames, &frame, sizeof(frame));

 gs_effect_t *effect = obs_get_base_effect(OBS_EFFECT_DEFAULT);
 gs_texture_t *tex = gs_texrender_get_texture(frame.render);
 if (tex) {
  gs_eparam_t *image =
   gs_effect_get_param_by_name(effect, "image");
  gs_effect_set_texture(image, tex);

  while (gs_effect_loop(effect, "Draw"))
   gs_draw_sprite(tex, 0, f->cx, f->cy);
 }
}
