
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int initialized; int stop; int thread; int update_semaphore; } ;
typedef TYPE_1__ video_t ;


 int os_sem_post (int ) ;
 int pthread_join (int ,void**) ;

void video_output_stop(video_t *video)
{
 void *thread_ret;

 if (!video)
  return;

 if (video->initialized) {
  video->initialized = 0;
  video->stop = 1;
  os_sem_post(video->update_semaphore);
  pthread_join(video->thread, &thread_ret);
 }
}
