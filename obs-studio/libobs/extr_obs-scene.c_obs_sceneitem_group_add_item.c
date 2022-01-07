
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_17__ {struct TYPE_17__* next; TYPE_4__* parent; struct TYPE_17__* prev; TYPE_2__* source; int is_group; } ;
typedef TYPE_3__ obs_sceneitem_t ;
struct TYPE_18__ {TYPE_3__* first_item; } ;
typedef TYPE_4__ obs_scene_t ;
struct TYPE_15__ {TYPE_4__* data; } ;
struct TYPE_16__ {TYPE_1__ context; } ;


 int apply_group_transform (TYPE_3__*,TYPE_3__*) ;
 int detach_sceneitem (TYPE_3__*) ;
 int full_lock (TYPE_4__*) ;
 int full_unlock (TYPE_4__*) ;
 int remove_group_transform (TYPE_3__*,TYPE_3__*) ;
 int resize_group (TYPE_3__*) ;

void obs_sceneitem_group_add_item(obs_sceneitem_t *group, obs_sceneitem_t *item)
{
 if (!group || !group->is_group || !item)
  return;

 obs_scene_t *scene = group->parent;
 obs_scene_t *groupscene = group->source->context.data;
 obs_sceneitem_t *last;

 if (item->parent != scene)
  return;



 full_lock(scene);
 remove_group_transform(group, item);
 detach_sceneitem(item);



 full_lock(groupscene);
 last = groupscene->first_item;
 if (last) {
  for (;;) {
   if (!last->next)
    break;
   last = last->next;
  }
  last->next = item;
  item->prev = last;
 } else {
  groupscene->first_item = item;
 }
 item->parent = groupscene;
 item->next = ((void*)0);
 apply_group_transform(item, group);
 resize_group(group);
 full_unlock(groupscene);



 full_unlock(scene);
}
