
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct obs_core_video {int video; } ;
struct TYPE_2__ {struct obs_core_video video; } ;


 TYPE_1__* obs ;
 int stop_raw_video (int ,void (*) (void*,struct video_data*),void*) ;

void obs_remove_raw_video_callback(void (*callback)(void *param,
          struct video_data *frame),
       void *param)
{
 struct obs_core_video *video = &obs->video;
 if (!obs)
  return;
 stop_raw_video(video->video, callback, param);
}
