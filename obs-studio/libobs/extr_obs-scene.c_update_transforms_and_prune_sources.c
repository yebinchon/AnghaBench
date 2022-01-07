
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct obs_scene_item {struct obs_scene_item* next; int update_transform; TYPE_6__* source; scalar_t__ is_group; int update_group_resize; } ;
struct darray {int dummy; } ;
typedef struct obs_scene_item obs_sceneitem_t ;
struct TYPE_8__ {struct obs_scene_item* first_item; } ;
typedef TYPE_2__ obs_scene_t ;
struct TYPE_7__ {TYPE_2__* data; } ;
struct TYPE_9__ {TYPE_1__ context; } ;


 int darray_push_back (int,struct darray*,struct obs_scene_item**) ;
 scalar_t__ obs_source_removed (TYPE_6__*) ;
 scalar_t__ os_atomic_load_bool (int *) ;
 int remove_without_release (struct obs_scene_item*) ;
 int resize_group (struct obs_scene_item*) ;
 scalar_t__ source_size_changed (struct obs_scene_item*) ;
 int update_item_transform (struct obs_scene_item*,int) ;
 int video_lock (TYPE_2__*) ;
 int video_unlock (TYPE_2__*) ;

__attribute__((used)) static void
update_transforms_and_prune_sources(obs_scene_t *scene,
        struct darray *remove_items,
        obs_sceneitem_t *group_sceneitem)
{
 struct obs_scene_item *item = scene->first_item;
 bool rebuild_group =
  group_sceneitem &&
  os_atomic_load_bool(&group_sceneitem->update_group_resize);

 while (item) {
  if (obs_source_removed(item->source)) {
   struct obs_scene_item *del_item = item;
   item = item->next;

   remove_without_release(del_item);
   darray_push_back(sizeof(struct obs_scene_item *),
      remove_items, &del_item);
   rebuild_group = 1;
   continue;
  }

  if (item->is_group) {
   obs_scene_t *group_scene = item->source->context.data;

   video_lock(group_scene);
   update_transforms_and_prune_sources(group_scene,
           remove_items, item);
   video_unlock(group_scene);
  }

  if (os_atomic_load_bool(&item->update_transform) ||
      source_size_changed(item)) {

   update_item_transform(item, 1);
   rebuild_group = 1;
  }

  item = item->next;
 }

 if (rebuild_group && group_sceneitem)
  resize_group(group_sceneitem);
}
