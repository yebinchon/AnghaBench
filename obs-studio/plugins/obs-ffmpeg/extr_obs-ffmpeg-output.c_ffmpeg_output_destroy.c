
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ffmpeg_output {int stop_event; int write_sem; int write_mutex; int start_thread; scalar_t__ connecting; } ;


 int bfree (void*) ;
 int ffmpeg_output_full_stop (struct ffmpeg_output*) ;
 int os_event_destroy (int ) ;
 int os_sem_destroy (int ) ;
 int pthread_join (int ,int *) ;
 int pthread_mutex_destroy (int *) ;

__attribute__((used)) static void ffmpeg_output_destroy(void *data)
{
 struct ffmpeg_output *output = data;

 if (output) {
  if (output->connecting)
   pthread_join(output->start_thread, ((void*)0));

  ffmpeg_output_full_stop(output);

  pthread_mutex_destroy(&output->write_mutex);
  os_sem_destroy(output->write_sem);
  os_event_destroy(output->stop_event);
  bfree(data);
 }
}
