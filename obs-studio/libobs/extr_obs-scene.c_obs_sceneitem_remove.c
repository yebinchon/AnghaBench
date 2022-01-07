
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int removed; TYPE_2__* parent; } ;
typedef TYPE_1__ obs_sceneitem_t ;
struct TYPE_11__ {int * source; } ;
typedef TYPE_2__ obs_scene_t ;


 int assert (int ) ;
 int detach_sceneitem (TYPE_1__*) ;
 int full_lock (TYPE_2__*) ;
 int full_unlock (TYPE_2__*) ;
 int obs_sceneitem_release (TYPE_1__*) ;
 int set_visibility (TYPE_1__*,int) ;
 int signal_item_remove (TYPE_1__*) ;

void obs_sceneitem_remove(obs_sceneitem_t *item)
{
 obs_scene_t *scene;

 if (!item)
  return;

 scene = item->parent;

 full_lock(scene);

 if (item->removed) {
  if (scene)
   full_unlock(scene);
  return;
 }

 item->removed = 1;

 assert(scene != ((void*)0));
 assert(scene->source != ((void*)0));

 set_visibility(item, 0);

 signal_item_remove(item);
 detach_sceneitem(item);

 full_unlock(scene);

 obs_sceneitem_release(item);
}
