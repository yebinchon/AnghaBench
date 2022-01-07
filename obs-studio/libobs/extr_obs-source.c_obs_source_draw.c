
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int gs_texture_t ;
typedef int gs_eparam_t ;
typedef int gs_effect_t ;


 int GS_FLIP_V ;
 int LOG_WARNING ;
 int blog (int ,char*) ;
 int gs_draw_sprite (int *,int ,int ,int ) ;
 int * gs_effect_get_param_by_name (int *,char*) ;
 int gs_effect_set_texture (int *,int *) ;
 int * gs_get_effect () ;
 int gs_matrix_pop () ;
 int gs_matrix_push () ;
 int gs_matrix_translate3f (float,float,float) ;
 int obs_ptr_valid (int *,char*) ;

void obs_source_draw(gs_texture_t *texture, int x, int y, uint32_t cx,
       uint32_t cy, bool flip)
{
 gs_effect_t *effect = gs_get_effect();
 bool change_pos = (x != 0 || y != 0);
 gs_eparam_t *image;

 if (!effect) {
  blog(LOG_WARNING, "obs_source_draw: no active effect!");
  return;
 }

 if (!obs_ptr_valid(texture, "obs_source_draw"))
  return;

 image = gs_effect_get_param_by_name(effect, "image");
 gs_effect_set_texture(image, texture);

 if (change_pos) {
  gs_matrix_push();
  gs_matrix_translate3f((float)x, (float)y, 0.0f);
 }

 gs_draw_sprite(texture, flip ? GS_FLIP_V : 0, cx, cy);

 if (change_pos)
  gs_matrix_pop();
}
