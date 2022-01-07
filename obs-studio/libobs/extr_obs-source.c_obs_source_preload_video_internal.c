
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct obs_source_frame {int timestamp; int height; int width; int format; } ;
struct TYPE_7__ {int last_frame_ts; int async_texrender; int async_textures; int async_preload_frame; } ;
typedef TYPE_1__ obs_source_t ;


 int copy_frame_data (int ,struct obs_source_frame const*) ;
 int obs_enter_graphics () ;
 int obs_leave_graphics () ;
 int obs_source_frame_create (int ,int ,int ) ;
 int obs_source_frame_destroy (int ) ;
 int obs_source_valid (TYPE_1__*,char*) ;
 scalar_t__ preload_frame_changed (TYPE_1__*,struct obs_source_frame const*) ;
 int set_async_texture_size (TYPE_1__*,int ) ;
 int update_async_textures (TYPE_1__*,int ,int ,int ) ;

__attribute__((used)) static void
obs_source_preload_video_internal(obs_source_t *source,
      const struct obs_source_frame *frame)
{
 if (!obs_source_valid(source, "obs_source_preload_video"))
  return;
 if (!frame)
  return;

 obs_enter_graphics();

 if (preload_frame_changed(source, frame)) {
  obs_source_frame_destroy(source->async_preload_frame);
  source->async_preload_frame = obs_source_frame_create(
   frame->format, frame->width, frame->height);
 }

 copy_frame_data(source->async_preload_frame, frame);
 set_async_texture_size(source, source->async_preload_frame);
 update_async_textures(source, source->async_preload_frame,
         source->async_textures, source->async_texrender);

 source->last_frame_ts = frame->timestamp;

 obs_leave_graphics();
}
