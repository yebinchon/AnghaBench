
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {size_t num; scalar_t__ array; } ;
struct audio_mix {TYPE_2__ inputs; } ;
struct TYPE_5__ {int stop_event; struct audio_mix* mixes; int thread; scalar_t__ initialized; } ;
typedef TYPE_1__ audio_t ;


 size_t MAX_AUDIO_MIXES ;
 int audio_input_free (scalar_t__) ;
 int bfree (TYPE_1__*) ;
 int da_free (TYPE_2__) ;
 int os_event_destroy (int ) ;
 int os_event_signal (int ) ;
 int pthread_join (int ,void**) ;

void audio_output_close(audio_t *audio)
{
 void *thread_ret;

 if (!audio)
  return;

 if (audio->initialized) {
  os_event_signal(audio->stop_event);
  pthread_join(audio->thread, &thread_ret);
 }

 for (size_t mix_idx = 0; mix_idx < MAX_AUDIO_MIXES; mix_idx++) {
  struct audio_mix *mix = &audio->mixes[mix_idx];

  for (size_t i = 0; i < mix->inputs.num; i++)
   audio_input_free(mix->inputs.array + i);

  da_free(mix->inputs);
 }

 os_event_destroy(audio->stop_event);
 bfree(audio);
}
