
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ffmpeg_output {int write_thread_active; int active; int output; int write_thread; int stop_event; int write_sem; } ;


 int ENOSPC ;
 int OBS_OUTPUT_ERROR ;
 int OBS_OUTPUT_NO_SPACE ;
 int ffmpeg_deactivate (struct ffmpeg_output*) ;
 int obs_output_signal_stop (int ,int) ;
 scalar_t__ os_event_try (int ) ;
 scalar_t__ os_sem_wait (int ) ;
 int process_packet (struct ffmpeg_output*) ;
 int pthread_detach (int ) ;

__attribute__((used)) static void *write_thread(void *data)
{
 struct ffmpeg_output *output = data;

 while (os_sem_wait(output->write_sem) == 0) {

  if (os_event_try(output->stop_event) == 0)
   break;

  int ret = process_packet(output);
  if (ret != 0) {
   int code = OBS_OUTPUT_ERROR;

   pthread_detach(output->write_thread);
   output->write_thread_active = 0;

   if (ret == -ENOSPC)
    code = OBS_OUTPUT_NO_SPACE;

   obs_output_signal_stop(output->output, code);
   ffmpeg_deactivate(output);
   break;
  }
 }

 output->active = 0;
 return ((void*)0);
}
