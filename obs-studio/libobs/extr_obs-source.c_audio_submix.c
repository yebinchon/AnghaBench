
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct obs_source_audio {int frames; int speakers; int timestamp; int format; scalar_t__ samples_per_sec; int const** data; int member_0; } ;
struct audio_output_data {scalar_t__* data; } ;
struct TYPE_7__ {int data; } ;
struct TYPE_6__ {int (* audio_mix ) (int ,int *,struct audio_output_data*,size_t,size_t) ;} ;
struct TYPE_8__ {TYPE_2__ context; TYPE_1__ info; scalar_t__* audio_mix_buf; } ;
typedef TYPE_3__ obs_source_t ;
typedef enum speaker_layout { ____Placeholder_speaker_layout } speaker_layout ;


 int AUDIO_FORMAT_FLOAT_PLANAR ;
 int AUDIO_OUTPUT_FRAMES ;
 int memset (scalar_t__,int ,int) ;
 int obs_source_output_audio (TYPE_3__*,struct obs_source_audio*) ;
 int stub1 (int ,int *,struct audio_output_data*,size_t,size_t) ;

__attribute__((used)) static void audio_submix(obs_source_t *source, size_t channels,
    size_t sample_rate)
{
 struct audio_output_data audio_data;
 struct obs_source_audio audio = {0};
 bool success;
 uint64_t ts;

 for (size_t ch = 0; ch < channels; ch++) {
  audio_data.data[ch] = source->audio_mix_buf[ch];
 }

 memset(source->audio_mix_buf[0], 0,
        sizeof(float) * AUDIO_OUTPUT_FRAMES * channels);

 success = source->info.audio_mix(source->context.data, &ts, &audio_data,
      channels, sample_rate);

 if (!success)
  return;

 for (size_t i = 0; i < channels; i++)
  audio.data[i] = (const uint8_t *)audio_data.data[i];

 audio.samples_per_sec = (uint32_t)sample_rate;
 audio.frames = AUDIO_OUTPUT_FRAMES;
 audio.format = AUDIO_FORMAT_FLOAT_PLANAR;
 audio.speakers = (enum speaker_layout)channels;
 audio.timestamp = ts;

 obs_source_output_audio(source, &audio);
}
