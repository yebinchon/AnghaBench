
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t num; scalar_t__ array; } ;
struct ffmpeg_output {int write_thread_active; int ff_data; int write_mutex; TYPE_1__ packets; int write_thread; int write_sem; int stop_event; } ;


 int av_free_packet (scalar_t__) ;
 int da_free (TYPE_1__) ;
 int ffmpeg_data_free (int *) ;
 int os_event_signal (int ) ;
 int os_sem_post (int ) ;
 int pthread_join (int ,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void ffmpeg_deactivate(struct ffmpeg_output *output)
{
 if (output->write_thread_active) {
  os_event_signal(output->stop_event);
  os_sem_post(output->write_sem);
  pthread_join(output->write_thread, ((void*)0));
  output->write_thread_active = 0;
 }

 pthread_mutex_lock(&output->write_mutex);

 for (size_t i = 0; i < output->packets.num; i++)
  av_free_packet(output->packets.array + i);
 da_free(output->packets);

 pthread_mutex_unlock(&output->write_mutex);

 ffmpeg_data_free(&output->ff_data);
}
