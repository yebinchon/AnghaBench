
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_scene_t ;
typedef int (* obs_scene_atomic_update_func ) (void*,int *) ;


 int full_lock (int *) ;
 int full_unlock (int *) ;
 int obs_scene_addref (int *) ;
 int obs_scene_release (int *) ;

void obs_scene_atomic_update(obs_scene_t *scene,
        obs_scene_atomic_update_func func, void *data)
{
 if (!scene)
  return;

 obs_scene_addref(scene);
 full_lock(scene);
 func(data, scene);
 full_unlock(scene);
 obs_scene_release(scene);
}
