
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ is_group; } ;
typedef TYPE_1__ obs_sceneitem_t ;
typedef int obs_scene_t ;


 int full_lock (int *) ;
 int full_unlock (int *) ;
 TYPE_1__* get_sceneitem_parent_group (int *,TYPE_1__*) ;

obs_sceneitem_t *obs_sceneitem_get_group(obs_scene_t *scene,
      obs_sceneitem_t *group_subitem)
{
 if (!scene || !group_subitem || group_subitem->is_group)
  return ((void*)0);

 full_lock(scene);
 obs_sceneitem_t *group =
  get_sceneitem_parent_group(scene, group_subitem);
 full_unlock(scene);

 return group;
}
