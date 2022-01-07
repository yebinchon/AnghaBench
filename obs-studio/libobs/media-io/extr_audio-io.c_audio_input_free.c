
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audio_input {int resampler; } ;


 int audio_resampler_destroy (int ) ;

__attribute__((used)) static inline void audio_input_free(struct audio_input *input)
{
 audio_resampler_destroy(input->resampler);
}
