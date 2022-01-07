
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct audio_data {int dummy; } ;
struct audio_cb_info {int param; int (* callback ) (int ,TYPE_2__*,struct audio_data const*,int) ;} ;
struct TYPE_5__ {size_t num; struct audio_cb_info* array; } ;
struct TYPE_6__ {int audio_cb_mutex; TYPE_1__ audio_cb_list; } ;
typedef TYPE_2__ obs_source_t ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int stub1 (int ,TYPE_2__*,struct audio_data const*,int) ;

__attribute__((used)) static void source_signal_audio_data(obs_source_t *source,
         const struct audio_data *in, bool muted)
{
 pthread_mutex_lock(&source->audio_cb_mutex);

 for (size_t i = source->audio_cb_list.num; i > 0; i--) {
  struct audio_cb_info info = source->audio_cb_list.array[i - 1];
  info.callback(info.param, source, in, muted);
 }

 pthread_mutex_unlock(&source->audio_cb_mutex);
}
