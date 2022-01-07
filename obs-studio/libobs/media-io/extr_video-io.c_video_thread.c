
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
struct video_output {int total_frames; scalar_t__ stop; int update_semaphore; TYPE_1__ info; } ;


 int obs_get_profiler_name_store () ;
 int os_atomic_inc_long (int *) ;
 scalar_t__ os_sem_wait (int ) ;
 int os_set_thread_name (char*) ;
 int profile_end (char const*) ;
 int profile_reenable_thread () ;
 int profile_start (char const*) ;
 char* profile_store_name (int ,char*,int ) ;
 int video_output_cur_frame (struct video_output*) ;

__attribute__((used)) static void *video_thread(void *param)
{
 struct video_output *video = param;

 os_set_thread_name("video-io: video thread");

 const char *video_thread_name =
  profile_store_name(obs_get_profiler_name_store(),
       "video_thread(%s)", video->info.name);

 while (os_sem_wait(video->update_semaphore) == 0) {
  if (video->stop)
   break;

  profile_start(video_thread_name);
  while (!video->stop && !video_output_cur_frame(video)) {
   os_atomic_inc_long(&video->total_frames);
  }

  os_atomic_inc_long(&video->total_frames);
  profile_end(video_thread_name);

  profile_reenable_thread();
 }

 return ((void*)0);
}
