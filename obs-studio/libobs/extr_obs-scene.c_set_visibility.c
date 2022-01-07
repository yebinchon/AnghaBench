
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct obs_scene_item {int visible; int user_visible; int actions_mutex; int active_refs; int source; TYPE_1__* parent; int audio_actions; } ;
struct TYPE_2__ {int source; } ;


 int da_resize (int ,int ) ;
 int obs_source_add_active_child (int ,int ) ;
 int obs_source_remove_active_child (int ,int ) ;
 scalar_t__ os_atomic_load_long (int *) ;
 int os_atomic_set_long (int *,int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void set_visibility(struct obs_scene_item *item, bool vis)
{
 pthread_mutex_lock(&item->actions_mutex);

 da_resize(item->audio_actions, 0);

 if (os_atomic_load_long(&item->active_refs) > 0) {
  if (!vis)
   obs_source_remove_active_child(item->parent->source,
             item->source);
 } else if (vis) {
  obs_source_add_active_child(item->parent->source, item->source);
 }

 os_atomic_set_long(&item->active_refs, vis ? 1 : 0);
 item->visible = vis;
 item->user_visible = vis;

 pthread_mutex_unlock(&item->actions_mutex);
}
