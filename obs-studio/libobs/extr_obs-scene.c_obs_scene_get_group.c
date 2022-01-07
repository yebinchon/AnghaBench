
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {struct TYPE_11__* next; TYPE_2__* source; scalar_t__ is_group; } ;
typedef TYPE_3__ obs_sceneitem_t ;
struct TYPE_12__ {TYPE_3__* first_item; } ;
typedef TYPE_4__ obs_scene_t ;
struct TYPE_9__ {scalar_t__ name; } ;
struct TYPE_10__ {TYPE_1__ context; } ;


 int full_lock (TYPE_4__*) ;
 int full_unlock (TYPE_4__*) ;
 scalar_t__ strcmp (scalar_t__,char const*) ;

obs_sceneitem_t *obs_scene_get_group(obs_scene_t *scene, const char *name)
{
 if (!scene || !name || !*name) {
  return ((void*)0);
 }

 obs_sceneitem_t *group = ((void*)0);
 obs_sceneitem_t *item;

 full_lock(scene);

 item = scene->first_item;
 while (item) {
  if (item->is_group && item->source->context.name) {
   if (strcmp(item->source->context.name, name) == 0) {
    group = item;
    break;
   }
  }

  item = item->next;
 }

 full_unlock(scene);

 return group;
}
