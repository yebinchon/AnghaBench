
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct obs_core_audio {int monitoring_mutex; int monitoring_device_id; int monitoring_device_name; int monitors; int root_nodes; int render_order; int buffered_timestamps; scalar_t__ audio; } ;
struct TYPE_2__ {struct obs_core_audio audio; } ;


 int audio_output_close (scalar_t__) ;
 int bfree (int ) ;
 int circlebuf_free (int *) ;
 int da_free (int ) ;
 int memset (struct obs_core_audio*,int ,int) ;
 TYPE_1__* obs ;
 int pthread_mutex_destroy (int *) ;

__attribute__((used)) static void obs_free_audio(void)
{
 struct obs_core_audio *audio = &obs->audio;
 if (audio->audio)
  audio_output_close(audio->audio);

 circlebuf_free(&audio->buffered_timestamps);
 da_free(audio->render_order);
 da_free(audio->root_nodes);

 da_free(audio->monitors);
 bfree(audio->monitoring_device_name);
 bfree(audio->monitoring_device_id);
 pthread_mutex_destroy(&audio->monitoring_mutex);

 memset(audio, 0, sizeof(struct obs_core_audio));
}
