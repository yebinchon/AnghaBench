
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ raw_audio2; } ;
struct TYPE_7__ {size_t mixer_mask; int audio; TYPE_1__ info; } ;
typedef TYPE_2__ obs_output_t ;


 int MAX_AUDIO_MIXES ;
 int audio_output_disconnect (int ,int,int ,TYPE_2__*) ;
 int default_raw_audio_callback ;
 int get_first_mixer (TYPE_2__*) ;

__attribute__((used)) static inline void stop_raw_audio(obs_output_t *output)
{
 if (output->info.raw_audio2) {
  for (int idx = 0; idx < MAX_AUDIO_MIXES; idx++) {
   if ((output->mixer_mask & ((size_t)1 << idx)) != 0) {
    audio_output_disconnect(
     output->audio, idx,
     default_raw_audio_callback, output);
   }
  }
 } else {
  audio_output_disconnect(output->audio, get_first_mixer(output),
     default_raw_audio_callback, output);
 }
}
