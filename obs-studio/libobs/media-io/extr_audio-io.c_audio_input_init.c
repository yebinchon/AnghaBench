
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct resample_info {scalar_t__ format; scalar_t__ samples_per_sec; scalar_t__ speakers; } ;
struct TYPE_3__ {scalar_t__ format; scalar_t__ samples_per_sec; scalar_t__ speakers; } ;
struct audio_output {TYPE_1__ info; } ;
struct TYPE_4__ {scalar_t__ format; scalar_t__ samples_per_sec; scalar_t__ speakers; } ;
struct audio_input {int * resampler; TYPE_2__ conversion; } ;


 int LOG_ERROR ;
 int * audio_resampler_create (struct resample_info*,struct resample_info*) ;
 int blog (int ,char*) ;

__attribute__((used)) static inline bool audio_input_init(struct audio_input *input,
        struct audio_output *audio)
{
 if (input->conversion.format != audio->info.format ||
     input->conversion.samples_per_sec != audio->info.samples_per_sec ||
     input->conversion.speakers != audio->info.speakers) {
  struct resample_info from = {
   .format = audio->info.format,
   .samples_per_sec = audio->info.samples_per_sec,
   .speakers = audio->info.speakers};

  struct resample_info to = {
   .format = input->conversion.format,
   .samples_per_sec = input->conversion.samples_per_sec,
   .speakers = input->conversion.speakers};

  input->resampler = audio_resampler_create(&to, &from);
  if (!input->resampler) {
   blog(LOG_ERROR, "audio_input_init: Failed to "
     "create resampler");
   return 0;
  }
 } else {
  input->resampler = ((void*)0);
 }

 return 1;
}
