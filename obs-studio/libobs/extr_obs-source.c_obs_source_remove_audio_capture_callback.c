
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct audio_cb_info {void* member_1; int member_0; } ;
struct TYPE_4__ {int audio_cb_mutex; int audio_cb_list; } ;
typedef TYPE_1__ obs_source_t ;
typedef int obs_source_audio_capture_t ;


 int da_erase_item (int ,struct audio_cb_info*) ;
 int obs_source_valid (TYPE_1__*,char*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void obs_source_remove_audio_capture_callback(
 obs_source_t *source, obs_source_audio_capture_t callback, void *param)
{
 struct audio_cb_info info = {callback, param};

 if (!obs_source_valid(source,
         "obs_source_remove_audio_capture_callback"))
  return;

 pthread_mutex_lock(&source->audio_cb_mutex);
 da_erase_item(source->audio_cb_list, &info);
 pthread_mutex_unlock(&source->audio_cb_mutex);
}
