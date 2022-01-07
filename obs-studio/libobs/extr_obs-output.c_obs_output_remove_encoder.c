
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_output {struct obs_encoder** audio_encoders; struct obs_encoder* video_encoder; } ;
struct obs_encoder {int dummy; } ;


 size_t MAX_AUDIO_MIXES ;
 int obs_output_valid (struct obs_output*,char*) ;

void obs_output_remove_encoder(struct obs_output *output,
          struct obs_encoder *encoder)
{
 if (!obs_output_valid(output, "obs_output_remove_encoder"))
  return;

 if (output->video_encoder == encoder) {
  output->video_encoder = ((void*)0);
 } else {
  for (size_t i = 0; i < MAX_AUDIO_MIXES; i++) {
   if (output->audio_encoders[i] == encoder)
    output->audio_encoders[i] = ((void*)0);
  }
 }
}
