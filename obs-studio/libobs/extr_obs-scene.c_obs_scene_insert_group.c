
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_19__ {struct TYPE_19__* prev; TYPE_2__* parent; struct TYPE_19__* next; scalar_t__ is_group; } ;
typedef TYPE_1__ obs_sceneitem_t ;
struct TYPE_20__ {TYPE_1__* first_item; int source; } ;
typedef TYPE_2__ obs_scene_t ;


 int apply_group_transform (TYPE_1__*,TYPE_1__*) ;
 TYPE_2__* create_id (char*,char const*) ;
 int detach_sceneitem (TYPE_1__*) ;
 int full_lock (TYPE_2__*) ;
 int full_unlock (TYPE_2__*) ;
 TYPE_1__* obs_scene_add_internal (TYPE_2__*,int ,TYPE_1__*) ;
 int obs_scene_release (TYPE_2__*) ;
 int remove_group_transform (TYPE_1__*,TYPE_1__*) ;
 int resize_group (TYPE_1__*) ;

obs_sceneitem_t *obs_scene_insert_group(obs_scene_t *scene, const char *name,
     obs_sceneitem_t **items, size_t count)
{
 if (!scene)
  return ((void*)0);


 for (size_t i = count; i > 0; i--) {
  obs_sceneitem_t *item = items[i - 1];
  if (item->parent != scene || item->is_group)
   return ((void*)0);
 }

 obs_scene_t *sub_scene = create_id("group", name);
 obs_sceneitem_t *last_item = items ? items[count - 1] : ((void*)0);

 obs_sceneitem_t *item =
  obs_scene_add_internal(scene, sub_scene->source, last_item);

 obs_scene_release(sub_scene);

 if (!items || !count)
  return item;



 full_lock(scene);
 full_lock(sub_scene);
 sub_scene->first_item = items[0];

 for (size_t i = count; i > 0; i--) {
  size_t idx = i - 1;
  remove_group_transform(item, items[idx]);
  detach_sceneitem(items[idx]);
 }
 for (size_t i = 0; i < count; i++) {
  size_t idx = i;
  if (idx != (count - 1)) {
   size_t next_idx = idx + 1;
   items[idx]->next = items[next_idx];
   items[next_idx]->prev = items[idx];
  } else {
   items[idx]->next = ((void*)0);
  }
  items[idx]->parent = sub_scene;
  apply_group_transform(items[idx], item);
 }
 items[0]->prev = ((void*)0);
 resize_group(item);
 full_unlock(sub_scene);
 full_unlock(scene);



 return item;
}
