
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ffmpeg_output {int connecting; int output; } ;


 int OBS_OUTPUT_CONNECT_FAILED ;
 int obs_output_signal_stop (int ,int ) ;
 int try_connect (struct ffmpeg_output*) ;

__attribute__((used)) static void *start_thread(void *data)
{
 struct ffmpeg_output *output = data;

 if (!try_connect(output))
  obs_output_signal_stop(output->output,
           OBS_OUTPUT_CONNECT_FAILED);

 output->connecting = 0;
 return ((void*)0);
}
