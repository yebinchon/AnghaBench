
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_output_info {int dummy; } ;
struct video_frame {int dummy; } ;
struct video_data {int timestamp; } ;
struct obs_core_video {int video; scalar_t__ gpu_conversion; } ;


 int copy_rgbx_frame (struct video_frame*,struct video_data*,struct video_output_info const*) ;
 int set_gpu_converted_data (struct obs_core_video*,struct video_frame*,struct video_data*,struct video_output_info const*) ;
 struct video_output_info* video_output_get_info (int ) ;
 int video_output_lock_frame (int ,struct video_frame*,int,int ) ;
 int video_output_unlock_frame (int ) ;

__attribute__((used)) static inline void output_video_data(struct obs_core_video *video,
         struct video_data *input_frame, int count)
{
 const struct video_output_info *info;
 struct video_frame output_frame;
 bool locked;

 info = video_output_get_info(video->video);

 locked = video_output_lock_frame(video->video, &output_frame, count,
      input_frame->timestamp);
 if (locked) {
  if (video->gpu_conversion) {
   set_gpu_converted_data(video, &output_frame,
            input_frame, info);
  } else {
   copy_rgbx_frame(&output_frame, input_frame, info);
  }

  video_output_unlock_frame(video->video);
 }
}
