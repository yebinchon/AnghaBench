
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec4 {int dummy; } ;
struct obs_core_video {int texture_converted; int * conversion_techs; int * convert_textures; int conversion_width_i; int * color_matrix; int * conversion_effect; } ;
typedef int gs_texture_t ;
typedef int gs_eparam_t ;
typedef int gs_effect_t ;


 int * gs_effect_get_param_by_name (int *,char*) ;
 int gs_effect_set_float (int *,int ) ;
 int gs_effect_set_texture (int *,int *) ;
 int gs_effect_set_vec4 (int *,struct vec4*) ;
 int gs_enable_blending (int) ;
 int profile_end (int ) ;
 int profile_start (int ) ;
 int render_convert_plane (int *,int ,int ) ;
 int render_convert_texture_name ;
 int vec4_set (struct vec4*,int ,int ,int ,int ) ;

__attribute__((used)) static void render_convert_texture(struct obs_core_video *video,
       gs_texture_t *texture)
{
 profile_start(render_convert_texture_name);

 gs_effect_t *effect = video->conversion_effect;
 gs_eparam_t *color_vec0 =
  gs_effect_get_param_by_name(effect, "color_vec0");
 gs_eparam_t *color_vec1 =
  gs_effect_get_param_by_name(effect, "color_vec1");
 gs_eparam_t *color_vec2 =
  gs_effect_get_param_by_name(effect, "color_vec2");
 gs_eparam_t *image = gs_effect_get_param_by_name(effect, "image");
 gs_eparam_t *width_i = gs_effect_get_param_by_name(effect, "width_i");

 struct vec4 vec0, vec1, vec2;
 vec4_set(&vec0, video->color_matrix[4], video->color_matrix[5],
   video->color_matrix[6], video->color_matrix[7]);
 vec4_set(&vec1, video->color_matrix[0], video->color_matrix[1],
   video->color_matrix[2], video->color_matrix[3]);
 vec4_set(&vec2, video->color_matrix[8], video->color_matrix[9],
   video->color_matrix[10], video->color_matrix[11]);

 gs_enable_blending(0);

 if (video->convert_textures[0]) {
  gs_effect_set_texture(image, texture);
  gs_effect_set_vec4(color_vec0, &vec0);
  render_convert_plane(effect, video->convert_textures[0],
         video->conversion_techs[0]);

  if (video->convert_textures[1]) {
   gs_effect_set_texture(image, texture);
   gs_effect_set_vec4(color_vec1, &vec1);
   if (!video->convert_textures[2])
    gs_effect_set_vec4(color_vec2, &vec2);
   gs_effect_set_float(width_i, video->conversion_width_i);
   render_convert_plane(effect, video->convert_textures[1],
          video->conversion_techs[1]);

   if (video->convert_textures[2]) {
    gs_effect_set_texture(image, texture);
    gs_effect_set_vec4(color_vec2, &vec2);
    gs_effect_set_float(width_i,
          video->conversion_width_i);
    render_convert_plane(
     effect, video->convert_textures[2],
     video->conversion_techs[2]);
   }
  }
 }

 gs_enable_blending(1);

 video->texture_converted = 1;

 profile_end(render_convert_texture_name);
}
