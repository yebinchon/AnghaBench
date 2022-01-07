
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct obs_source_frame {int dummy; } ;
struct TYPE_8__ {int deinterlace_rendered; int * async_texrender; int * async_prev_texrender; int ** async_textures; int ** async_prev_textures; } ;
typedef TYPE_1__ obs_source_t ;
typedef int gs_texture_t ;
typedef int gs_texrender_t ;


 size_t MAX_AV_PLANES ;
 struct obs_source_frame* filter_async_video (TYPE_1__*,struct obs_source_frame*) ;
 struct obs_source_frame* get_prev_frame (TYPE_1__*,int*) ;
 int obs_source_release_frame (TYPE_1__*,struct obs_source_frame*) ;
 scalar_t__ set_async_texture_size (TYPE_1__*,struct obs_source_frame*) ;
 int update_async_textures (TYPE_1__*,struct obs_source_frame*,int **,int *) ;

void deinterlace_update_async_video(obs_source_t *source)
{
 struct obs_source_frame *frame;
 bool updated;

 if (source->deinterlace_rendered)
  return;

 frame = get_prev_frame(source, &updated);

 source->deinterlace_rendered = 1;
 if (frame)
  frame = filter_async_video(source, frame);

 if (frame) {
  if (set_async_texture_size(source, frame)) {
   update_async_textures(source, frame,
           source->async_prev_textures,
           source->async_prev_texrender);
  }

  obs_source_release_frame(source, frame);

 } else if (updated) {
  for (size_t c = 0; c < MAX_AV_PLANES; c++) {
   gs_texture_t *prev_tex = source->async_prev_textures[c];
   source->async_prev_textures[c] =
    source->async_textures[c];
   source->async_textures[c] = prev_tex;
  }

  if (source->async_texrender) {
   gs_texrender_t *prev = source->async_prev_texrender;
   source->async_prev_texrender = source->async_texrender;
   source->async_texrender = prev;
  }
 }
}
