
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct obs_scene_item {struct obs_scene_item* next; } ;
struct obs_scene {struct obs_scene_item* first_item; } ;
struct TYPE_6__ {struct obs_scene* parent; } ;
typedef TYPE_1__ obs_sceneitem_t ;


 int attach_sceneitem (struct obs_scene*,TYPE_1__*,struct obs_scene_item*) ;
 int detach_sceneitem (TYPE_1__*) ;
 int full_lock (struct obs_scene*) ;
 int full_unlock (struct obs_scene*) ;
 int obs_scene_addref (struct obs_scene*) ;
 int obs_scene_release (struct obs_scene*) ;
 int signal_reorder (TYPE_1__*) ;

void obs_sceneitem_set_order_position(obs_sceneitem_t *item, int position)
{
 if (!item)
  return;

 struct obs_scene *scene = item->parent;
 struct obs_scene_item *next;

 obs_scene_addref(scene);
 full_lock(scene);

 detach_sceneitem(item);
 next = scene->first_item;

 if (position == 0) {
  attach_sceneitem(scene, item, ((void*)0));
 } else {
  for (int i = position; i > 1; --i) {
   if (next->next == ((void*)0))
    break;
   next = next->next;
  }

  attach_sceneitem(scene, item, next);
 }

 full_unlock(scene);

 signal_reorder(item);
 obs_scene_release(scene);
}
