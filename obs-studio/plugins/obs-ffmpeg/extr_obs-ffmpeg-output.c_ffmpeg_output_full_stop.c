
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ffmpeg_output {int output; scalar_t__ active; } ;


 int ffmpeg_deactivate (struct ffmpeg_output*) ;
 int obs_output_end_data_capture (int ) ;

__attribute__((used)) static void ffmpeg_output_full_stop(void *data)
{
 struct ffmpeg_output *output = data;

 if (output->active) {
  obs_output_end_data_capture(output->output);
  ffmpeg_deactivate(output);
 }
}
