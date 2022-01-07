
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_4__ {size_t num; struct item_action* array; } ;
struct obs_scene_item {int visible; int source; TYPE_1__* parent; int active_refs; int actions_mutex; TYPE_2__ audio_actions; } ;
struct item_action {scalar_t__ timestamp; int visible; } ;
struct TYPE_3__ {int source; } ;


 int AUDIO_OUTPUT_FRAMES ;
 int da_erase (TYPE_2__,int ) ;
 float* malloc (int) ;
 int obs_source_remove_active_child (int ,int ) ;
 scalar_t__ os_atomic_dec_long (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void apply_scene_item_audio_actions(struct obs_scene_item *item,
        float **p_buf, uint64_t ts,
        size_t sample_rate)
{
 bool cur_visible = item->visible;
 uint64_t frame_num = 0;
 size_t deref_count = 0;
 float *buf = ((void*)0);

 if (p_buf) {
  if (!*p_buf)
   *p_buf = malloc(AUDIO_OUTPUT_FRAMES * sizeof(float));
  buf = *p_buf;
 }

 pthread_mutex_lock(&item->actions_mutex);

 for (size_t i = 0; i < item->audio_actions.num; i++) {
  struct item_action action = item->audio_actions.array[i];
  uint64_t timestamp = action.timestamp;
  uint64_t new_frame_num;

  if (timestamp < ts)
   timestamp = ts;

  new_frame_num = (timestamp - ts) * (uint64_t)sample_rate /
    1000000000ULL;

  if (ts && new_frame_num >= AUDIO_OUTPUT_FRAMES)
   break;

  da_erase(item->audio_actions, i--);

  item->visible = action.visible;
  if (!item->visible)
   deref_count++;

  if (buf && new_frame_num > frame_num) {
   for (; frame_num < new_frame_num; frame_num++)
    buf[frame_num] = cur_visible ? 1.0f : 0.0f;
  }

  cur_visible = item->visible;
 }

 if (buf) {
  for (; frame_num < AUDIO_OUTPUT_FRAMES; frame_num++)
   buf[frame_num] = cur_visible ? 1.0f : 0.0f;
 }

 pthread_mutex_unlock(&item->actions_mutex);

 while (deref_count--) {
  if (os_atomic_dec_long(&item->active_refs) == 0) {
   obs_source_remove_active_child(item->parent->source,
             item->source);
  }
 }
}
