
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct ffmpeg_output {scalar_t__ stop_ts; int stopping; scalar_t__ active; } ;


 int ffmpeg_output_full_stop (struct ffmpeg_output*) ;
 int os_atomic_set_bool (int *,int) ;

__attribute__((used)) static void ffmpeg_output_stop(void *data, uint64_t ts)
{
 struct ffmpeg_output *output = data;

 if (output->active) {
  if (ts == 0) {
   ffmpeg_output_full_stop(output);
  } else {
   os_atomic_set_bool(&output->stopping, 1);
   output->stop_ts = ts;
  }
 }
}
