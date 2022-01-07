
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct vec2 {float member_0; float member_1; } ;
struct TYPE_6__ {scalar_t__ deinterlace_frame_ts; scalar_t__ deinterlace_offset; scalar_t__ deinterlace_half_duration; scalar_t__ async_height; scalar_t__ async_width; scalar_t__ async_flip; int deinterlace_top_first; int ** async_prev_textures; scalar_t__ async_prev_texrender; int ** async_textures; scalar_t__ async_texrender; int * deinterlace_effect; } ;
typedef TYPE_2__ obs_source_t ;
typedef int gs_texture_t ;
typedef int gs_eparam_t ;
typedef int gs_effect_t ;
struct TYPE_5__ {scalar_t__ video_time; } ;
struct TYPE_7__ {TYPE_1__ video; } ;


 int GS_FLIP_V ;
 scalar_t__ TWOX_TOLERANCE ;
 int gs_draw_sprite (int *,int ,scalar_t__,scalar_t__) ;
 int * gs_effect_get_param_by_name (int *,char*) ;
 scalar_t__ gs_effect_loop (int *,char*) ;
 int gs_effect_set_bool (int *,int) ;
 int gs_effect_set_int (int *,int ) ;
 int gs_effect_set_texture (int *,int *) ;
 int gs_effect_set_vec2 (int *,struct vec2*) ;
 int * gs_texrender_get_texture (scalar_t__) ;
 TYPE_3__* obs ;

void deinterlace_render(obs_source_t *s)
{
 gs_effect_t *effect = s->deinterlace_effect;

 uint64_t frame2_ts;
 gs_eparam_t *image = gs_effect_get_param_by_name(effect, "image");
 gs_eparam_t *prev =
  gs_effect_get_param_by_name(effect, "previous_image");
 gs_eparam_t *field = gs_effect_get_param_by_name(effect, "field_order");
 gs_eparam_t *frame2 = gs_effect_get_param_by_name(effect, "frame2");
 gs_eparam_t *dimensions =
  gs_effect_get_param_by_name(effect, "dimensions");
 struct vec2 size = {(float)s->async_width, (float)s->async_height};

 gs_texture_t *cur_tex =
  s->async_texrender
   ? gs_texrender_get_texture(s->async_texrender)
   : s->async_textures[0];
 gs_texture_t *prev_tex =
  s->async_prev_texrender
   ? gs_texrender_get_texture(s->async_prev_texrender)
   : s->async_prev_textures[0];

 if (!cur_tex || !prev_tex || !s->async_width || !s->async_height)
  return;

 gs_effect_set_texture(image, cur_tex);
 gs_effect_set_texture(prev, prev_tex);
 gs_effect_set_int(field, s->deinterlace_top_first);
 gs_effect_set_vec2(dimensions, &size);

 frame2_ts = s->deinterlace_frame_ts + s->deinterlace_offset +
      s->deinterlace_half_duration - TWOX_TOLERANCE;

 gs_effect_set_bool(frame2, obs->video.video_time >= frame2_ts);

 while (gs_effect_loop(effect, "Draw"))
  gs_draw_sprite(((void*)0), s->async_flip ? GS_FLIP_V : 0,
          s->async_width, s->async_height);
}
