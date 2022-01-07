
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_source_frame {int full_range; int format; } ;
typedef int obs_source_t ;


 scalar_t__ format_is_yuv (int ) ;
 int obs_source_preload_video_internal (int *,struct obs_source_frame*) ;

void obs_source_preload_video(obs_source_t *source,
         const struct obs_source_frame *frame)
{
 if (!frame) {
  obs_source_preload_video_internal(source, ((void*)0));
  return;
 }

 struct obs_source_frame new_frame = *frame;
 new_frame.full_range =
  format_is_yuv(frame->format) ? new_frame.full_range : 1;

 obs_source_preload_video_internal(source, &new_frame);
}
