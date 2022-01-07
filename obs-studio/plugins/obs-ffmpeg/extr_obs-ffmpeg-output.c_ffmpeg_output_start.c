
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ffmpeg_output {int connecting; int start_thread; scalar_t__ total_bytes; scalar_t__ video_start_ts; scalar_t__ audio_start_ts; int stopping; } ;


 int os_atomic_set_bool (int *,int) ;
 int pthread_create (int *,int *,int ,struct ffmpeg_output*) ;
 int start_thread ;

__attribute__((used)) static bool ffmpeg_output_start(void *data)
{
 struct ffmpeg_output *output = data;
 int ret;

 if (output->connecting)
  return 0;

 os_atomic_set_bool(&output->stopping, 0);
 output->audio_start_ts = 0;
 output->video_start_ts = 0;
 output->total_bytes = 0;

 ret = pthread_create(&output->start_thread, ((void*)0), start_thread, output);
 return (output->connecting = (ret == 0));
}
