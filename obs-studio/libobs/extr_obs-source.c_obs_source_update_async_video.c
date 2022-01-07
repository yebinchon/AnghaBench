
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct obs_source_frame {scalar_t__ timestamp; } ;
struct TYPE_11__ {int async_rendered; int timing_set; int async_update_texture; int async_texrender; int async_textures; scalar_t__ timing_adjust; int async_unbuffered; int async_decoupled; } ;
typedef TYPE_2__ obs_source_t ;
struct TYPE_10__ {scalar_t__ video_time; } ;
struct TYPE_12__ {TYPE_1__ video; } ;


 int check_to_swap_bgrx_bgra (TYPE_2__*,struct obs_source_frame*) ;
 struct obs_source_frame* filter_async_video (TYPE_2__*,struct obs_source_frame*) ;
 TYPE_7__* obs ;
 struct obs_source_frame* obs_source_get_frame (TYPE_2__*) ;
 int obs_source_release_frame (TYPE_2__*,struct obs_source_frame*) ;
 int update_async_textures (TYPE_2__*,struct obs_source_frame*,int ,int ) ;

__attribute__((used)) static void obs_source_update_async_video(obs_source_t *source)
{
 if (!source->async_rendered) {
  struct obs_source_frame *frame = obs_source_get_frame(source);

  if (frame)
   frame = filter_async_video(source, frame);

  source->async_rendered = 1;
  if (frame) {
   check_to_swap_bgrx_bgra(source, frame);

   if (!source->async_decoupled ||
       !source->async_unbuffered) {
    source->timing_adjust = obs->video.video_time -
       frame->timestamp;
    source->timing_set = 1;
   }

   if (source->async_update_texture) {
    update_async_textures(source, frame,
            source->async_textures,
            source->async_texrender);
    source->async_update_texture = 0;
   }

   obs_source_release_frame(source, frame);
  }
 }
}
