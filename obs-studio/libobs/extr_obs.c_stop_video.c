
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct obs_core_video {int thread_initialized; int video_thread; scalar_t__ video; } ;
struct TYPE_2__ {struct obs_core_video video; } ;


 TYPE_1__* obs ;
 int pthread_join (int ,void**) ;
 int video_output_stop (scalar_t__) ;

__attribute__((used)) static void stop_video(void)
{
 struct obs_core_video *video = &obs->video;
 void *thread_retval;

 if (video->video) {
  video_output_stop(video->video);
  if (video->thread_initialized) {
   pthread_join(video->video_thread, &thread_retval);
   video->thread_initialized = 0;
  }
 }
}
