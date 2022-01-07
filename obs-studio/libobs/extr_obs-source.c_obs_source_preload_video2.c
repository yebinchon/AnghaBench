
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_source_frame2 {int color_range_max; int color_range_min; int color_matrix; int flip; int format; int timestamp; int height; int width; int * linesize; int * data; int range; } ;
struct obs_source_frame {int full_range; int color_range_max; int color_range_min; int color_matrix; int flip; int format; int timestamp; int height; int width; int * linesize; int * data; } ;
typedef int obs_source_t ;
typedef enum video_range_type { ____Placeholder_video_range_type } video_range_type ;


 size_t MAX_AV_PLANES ;
 int VIDEO_RANGE_FULL ;
 int memcpy (int *,int *,int) ;
 int obs_source_preload_video_internal (int *,struct obs_source_frame*) ;
 int resolve_video_range (int ,int ) ;

void obs_source_preload_video2(obs_source_t *source,
          const struct obs_source_frame2 *frame)
{
 if (!frame) {
  obs_source_preload_video_internal(source, ((void*)0));
  return;
 }

 struct obs_source_frame new_frame;
 enum video_range_type range =
  resolve_video_range(frame->format, frame->range);

 for (size_t i = 0; i < MAX_AV_PLANES; i++) {
  new_frame.data[i] = frame->data[i];
  new_frame.linesize[i] = frame->linesize[i];
 }

 new_frame.width = frame->width;
 new_frame.height = frame->height;
 new_frame.timestamp = frame->timestamp;
 new_frame.format = frame->format;
 new_frame.full_range = range == VIDEO_RANGE_FULL;
 new_frame.flip = frame->flip;

 memcpy(&new_frame.color_matrix, &frame->color_matrix,
        sizeof(frame->color_matrix));
 memcpy(&new_frame.color_range_min, &frame->color_range_min,
        sizeof(frame->color_range_min));
 memcpy(&new_frame.color_range_max, &frame->color_range_max,
        sizeof(frame->color_range_max));

 obs_source_preload_video_internal(source, &new_frame);
}
