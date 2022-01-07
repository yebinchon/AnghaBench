
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data_mutex; int update_semaphore; int available_frames; } ;
typedef TYPE_1__ video_t ;


 int os_sem_post (int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void video_output_unlock_frame(video_t *video)
{
 if (!video)
  return;

 pthread_mutex_lock(&video->data_mutex);

 video->available_frames--;
 os_sem_post(video->update_semaphore);

 pthread_mutex_unlock(&video->data_mutex);
}
