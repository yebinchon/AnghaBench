
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct obs_source_audio {scalar_t__ samples_per_sec; scalar_t__ format; scalar_t__ speakers; int timestamp; int frames; int const* const* data; } ;
typedef int output ;
struct TYPE_11__ {scalar_t__ samples_per_sec; scalar_t__ format; scalar_t__ speakers; } ;
struct TYPE_12__ {float balance; int flags; TYPE_2__ sample_info; int resample_offset; scalar_t__ resampler; scalar_t__ audio_failed; } ;
typedef TYPE_3__ obs_source_t ;
struct TYPE_10__ {int audio; } ;
struct TYPE_13__ {TYPE_1__ audio; } ;


 int MAX_AV_PLANES ;
 int OBS_BALANCE_TYPE_SINE_LAW ;
 int OBS_SOURCE_FLAG_FORCE_MONO ;
 scalar_t__ SPEAKERS_STEREO ;
 int audio_output_get_channels (int ) ;
 int audio_resampler_resample (scalar_t__,int **,int *,int *,int const* const*,int ) ;
 int copy_audio_data (TYPE_3__*,int const* const*,int ,int ) ;
 int downmix_to_mono_planar (TYPE_3__*,int ) ;
 int memset (int **,int ,int) ;
 TYPE_7__* obs ;
 int process_audio_balancing (TYPE_3__*,int ,float,int ) ;
 int reset_resampler (TYPE_3__*,struct obs_source_audio const*) ;

__attribute__((used)) static void process_audio(obs_source_t *source,
     const struct obs_source_audio *audio)
{
 uint32_t frames = audio->frames;
 bool mono_output;

 if (source->sample_info.samples_per_sec != audio->samples_per_sec ||
     source->sample_info.format != audio->format ||
     source->sample_info.speakers != audio->speakers)
  reset_resampler(source, audio);

 if (source->audio_failed)
  return;

 if (source->resampler) {
  uint8_t *output[MAX_AV_PLANES];

  memset(output, 0, sizeof(output));

  audio_resampler_resample(source->resampler, output, &frames,
      &source->resample_offset, audio->data,
      audio->frames);

  copy_audio_data(source, (const uint8_t *const *)output, frames,
    audio->timestamp);
 } else {
  copy_audio_data(source, audio->data, audio->frames,
    audio->timestamp);
 }

 mono_output = audio_output_get_channels(obs->audio.audio) == 1;

 if (!mono_output && source->sample_info.speakers == SPEAKERS_STEREO &&
     (source->balance > 0.51f || source->balance < 0.49f)) {
  process_audio_balancing(source, frames, source->balance,
     OBS_BALANCE_TYPE_SINE_LAW);
 }

 if (!mono_output && (source->flags & OBS_SOURCE_FLAG_FORCE_MONO) != 0)
  downmix_to_mono_planar(source, frames);
}
