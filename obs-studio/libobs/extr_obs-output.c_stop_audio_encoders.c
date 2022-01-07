
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * audio_encoders; } ;
typedef TYPE_1__ obs_output_t ;
typedef int encoded_callback_t ;


 size_t num_audio_mixes (TYPE_1__*) ;
 int obs_encoder_stop (int ,int ,TYPE_1__*) ;

__attribute__((used)) static inline void stop_audio_encoders(obs_output_t *output,
           encoded_callback_t encoded_callback)
{
 size_t num_mixes = num_audio_mixes(output);

 for (size_t i = 0; i < num_mixes; i++) {
  obs_encoder_stop(output->audio_encoders[i], encoded_callback,
     output);
 }
}
