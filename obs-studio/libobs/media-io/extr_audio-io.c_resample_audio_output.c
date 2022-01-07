
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct audio_input {scalar_t__ resampler; } ;
struct audio_data {int timestamp; int frames; int ** data; } ;
typedef int output ;


 int MAX_AV_PLANES ;
 int audio_resampler_resample (scalar_t__,int **,int *,scalar_t__*,int const* const*,int ) ;
 int memset (int **,int ,int) ;

__attribute__((used)) static bool resample_audio_output(struct audio_input *input,
      struct audio_data *data)
{
 bool success = 1;

 if (input->resampler) {
  uint8_t *output[MAX_AV_PLANES];
  uint32_t frames;
  uint64_t offset;

  memset(output, 0, sizeof(output));

  success = audio_resampler_resample(
   input->resampler, output, &frames, &offset,
   (const uint8_t *const *)data->data, data->frames);

  for (size_t i = 0; i < MAX_AV_PLANES; i++)
   data->data[i] = output[i];
  data->frames = frames;
  data->timestamp -= offset;
 }

 return success;
}
