
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct obs_scene_item {struct obs_scene_item* next; TYPE_2__* source; } ;
typedef struct obs_scene_item obs_sceneitem_t ;
struct TYPE_9__ {struct obs_scene_item* first_item; } ;
typedef TYPE_3__ obs_scene_t ;
struct TYPE_7__ {int name; } ;
struct TYPE_8__ {TYPE_1__ context; } ;


 int full_lock (TYPE_3__*) ;
 int full_unlock (TYPE_3__*) ;
 scalar_t__ strcmp (int ,char const*) ;

obs_sceneitem_t *obs_scene_find_source(obs_scene_t *scene, const char *name)
{
 struct obs_scene_item *item;

 if (!scene)
  return ((void*)0);

 full_lock(scene);

 item = scene->first_item;
 while (item) {
  if (strcmp(item->source->context.name, name) == 0)
   break;

  item = item->next;
 }

 full_unlock(scene);

 return item;
}
