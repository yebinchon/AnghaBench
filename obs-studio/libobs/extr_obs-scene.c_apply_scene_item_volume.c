
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long long uint64_t ;
struct TYPE_2__ {scalar_t__ num; struct item_action* array; } ;
struct obs_scene_item {int actions_mutex; TYPE_1__ audio_actions; } ;
struct item_action {unsigned long long timestamp; } ;


 scalar_t__ AUDIO_OUTPUT_FRAMES ;
 int apply_scene_item_audio_actions (struct obs_scene_item*,float**,unsigned long long,size_t) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static bool apply_scene_item_volume(struct obs_scene_item *item, float **buf,
        uint64_t ts, size_t sample_rate)
{
 bool actions_pending;
 struct item_action action;

 pthread_mutex_lock(&item->actions_mutex);

 actions_pending = item->audio_actions.num > 0;
 if (actions_pending)
  action = item->audio_actions.array[0];

 pthread_mutex_unlock(&item->actions_mutex);

 if (actions_pending) {
  uint64_t duration = (uint64_t)AUDIO_OUTPUT_FRAMES *
        1000000000ULL / (uint64_t)sample_rate;

  if (!ts || action.timestamp < (ts + duration)) {
   apply_scene_item_audio_actions(item, buf, ts,
             sample_rate);
   return 1;
  }
 }

 return 0;
}
