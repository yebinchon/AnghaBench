
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {scalar_t__ audio_mix; scalar_t__ audio_render; } ;
struct TYPE_8__ {int audio_pending; int audio_ts; TYPE_1__ info; int ** audio_output_buf; } ;
typedef TYPE_2__ obs_source_t ;


 int audio_submix (TYPE_2__*,size_t,size_t) ;
 int custom_audio_render (TYPE_2__*,int ,size_t,size_t) ;
 int process_audio_source_tick (TYPE_2__*,int ,size_t,size_t,size_t) ;

void obs_source_audio_render(obs_source_t *source, uint32_t mixers,
        size_t channels, size_t sample_rate, size_t size)
{
 if (!source->audio_output_buf[0][0]) {
  source->audio_pending = 1;
  return;
 }

 if (source->info.audio_render) {
  custom_audio_render(source, mixers, channels, sample_rate);
  return;
 }

 if (source->info.audio_mix) {
  audio_submix(source, channels, sample_rate);
 }

 if (!source->audio_ts) {
  source->audio_pending = 1;
  return;
 }

 process_audio_source_tick(source, mixers, channels, sample_rate, size);
}
