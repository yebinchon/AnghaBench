
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_output {int service; int video; int video_encoder; } ;


 int audio_valid (struct obs_output const*,int) ;

__attribute__((used)) static bool can_begin_data_capture(const struct obs_output *output,
       bool encoded, bool has_video, bool has_audio,
       bool has_service)
{
 if (has_video) {
  if (encoded) {
   if (!output->video_encoder)
    return 0;
  } else {
   if (!output->video)
    return 0;
  }
 }

 if (has_audio) {
  if (!audio_valid(output, encoded)) {
   return 0;
  }
 }

 if (has_service && !output->service)
  return 0;

 return 1;
}
