
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * audio_encoders; } ;
typedef TYPE_1__ obs_output_t ;


 int obs_encoder_initialize (int ) ;

__attribute__((used)) static inline bool initialize_audio_encoders(obs_output_t *output,
          size_t num_mixes)
{
 for (size_t i = 0; i < num_mixes; i++) {
  if (!obs_encoder_initialize(output->audio_encoders[i])) {
   return 0;
  }
 }

 return 1;
}
