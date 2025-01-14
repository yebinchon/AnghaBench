
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int async_channel_count; int* async_texture_formats; int async_height; int async_width; void** async_prev_textures; int async_format; int * async_convert_height; int * async_convert_width; int async_prev_texrender; scalar_t__ async_gpu_conversion; } ;
typedef TYPE_1__ obs_source_t ;
typedef enum gs_color_format { ____Placeholder_gs_color_format } gs_color_format ;


 int GS_BGRX ;
 int GS_DYNAMIC ;
 int GS_ZS_NONE ;
 int convert_video_format (int ) ;
 int gs_texrender_create (int ,int ) ;
 void* gs_texture_create (int ,int ,int,int,int *,int ) ;

void set_deinterlace_texture_size(obs_source_t *source)
{
 if (source->async_gpu_conversion) {
  source->async_prev_texrender =
   gs_texrender_create(GS_BGRX, GS_ZS_NONE);

  for (int c = 0; c < source->async_channel_count; c++)
   source->async_prev_textures[c] = gs_texture_create(
    source->async_convert_width[c],
    source->async_convert_height[c],
    source->async_texture_formats[c], 1, ((void*)0),
    GS_DYNAMIC);

 } else {
  enum gs_color_format format =
   convert_video_format(source->async_format);

  source->async_prev_textures[0] = gs_texture_create(
   source->async_width, source->async_height, format, 1,
   ((void*)0), GS_DYNAMIC);
 }
}
