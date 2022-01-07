
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int video_t ;
struct video_scale_info {int dummy; } ;
struct obs_core_video {int raw_active; } ;
struct TYPE_2__ {struct obs_core_video video; } ;


 TYPE_1__* obs ;
 int os_atomic_inc_long (int *) ;
 int video_output_connect (int *,struct video_scale_info const*,void (*) (void*,struct video_data*),void*) ;

void start_raw_video(video_t *v, const struct video_scale_info *conversion,
       void (*callback)(void *param, struct video_data *frame),
       void *param)
{
 struct obs_core_video *video = &obs->video;
 os_atomic_inc_long(&video->raw_active);
 video_output_connect(v, conversion, callback, param);
}
