
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_core_video {int gpu_encode_thread_initialized; int gpu_encode_thread; int gpu_encode_semaphore; int gpu_encode_stop; } ;


 int os_atomic_set_bool (int *,int) ;
 int os_sem_post (int ) ;
 int pthread_join (int ,int *) ;

void stop_gpu_encoding_thread(struct obs_core_video *video)
{
 if (video->gpu_encode_thread_initialized) {
  os_atomic_set_bool(&video->gpu_encode_stop, 1);
  os_sem_post(video->gpu_encode_semaphore);
  pthread_join(video->gpu_encode_thread, ((void*)0));
  video->gpu_encode_thread_initialized = 0;
 }
}
