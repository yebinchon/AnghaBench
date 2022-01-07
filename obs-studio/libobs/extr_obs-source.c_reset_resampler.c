
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct resample_info {scalar_t__ format; scalar_t__ samples_per_sec; scalar_t__ speakers; } ;
struct obs_source_audio {scalar_t__ format; scalar_t__ samples_per_sec; scalar_t__ speakers; } ;
struct audio_output_info {scalar_t__ format; scalar_t__ samples_per_sec; scalar_t__ speakers; } ;
struct TYPE_9__ {scalar_t__ format; scalar_t__ samples_per_sec; scalar_t__ speakers; } ;
struct TYPE_7__ {int audio_failed; int * resampler; TYPE_5__ sample_info; scalar_t__ resample_offset; } ;
typedef TYPE_2__ obs_source_t ;
struct TYPE_6__ {int audio; } ;
struct TYPE_8__ {TYPE_1__ audio; } ;


 int LOG_ERROR ;
 struct audio_output_info* audio_output_get_info (int ) ;
 int * audio_resampler_create (struct resample_info*,TYPE_5__*) ;
 int audio_resampler_destroy (int *) ;
 int blog (int ,char*) ;
 TYPE_4__* obs ;

__attribute__((used)) static inline void reset_resampler(obs_source_t *source,
       const struct obs_source_audio *audio)
{
 const struct audio_output_info *obs_info;
 struct resample_info output_info;

 obs_info = audio_output_get_info(obs->audio.audio);

 output_info.format = obs_info->format;
 output_info.samples_per_sec = obs_info->samples_per_sec;
 output_info.speakers = obs_info->speakers;

 source->sample_info.format = audio->format;
 source->sample_info.samples_per_sec = audio->samples_per_sec;
 source->sample_info.speakers = audio->speakers;

 audio_resampler_destroy(source->resampler);
 source->resampler = ((void*)0);
 source->resample_offset = 0;

 if (source->sample_info.samples_per_sec == obs_info->samples_per_sec &&
     source->sample_info.format == obs_info->format &&
     source->sample_info.speakers == obs_info->speakers) {
  source->audio_failed = 0;
  return;
 }

 source->resampler =
  audio_resampler_create(&output_info, &source->sample_info);

 source->audio_failed = source->resampler == ((void*)0);
 if (source->resampler == ((void*)0))
  blog(LOG_ERROR, "creation of resampler failed");
}
