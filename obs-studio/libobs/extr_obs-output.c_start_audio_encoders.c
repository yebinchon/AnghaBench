
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_output {int * audio_encoders; } ;
typedef int encoded_callback_t ;


 size_t num_audio_mixes (struct obs_output*) ;
 int obs_encoder_start (int ,int ,struct obs_output*) ;

__attribute__((used)) static inline void start_audio_encoders(struct obs_output *output,
     encoded_callback_t encoded_callback)
{
 size_t num_mixes = num_audio_mixes(output);

 for (size_t i = 0; i < num_mixes; i++) {
  obs_encoder_start(output->audio_encoders[i], encoded_callback,
      output);
 }
}
