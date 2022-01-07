
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_sceneitem_t ;
typedef int obs_scene_t ;


 int * obs_scene_insert_group (int *,char const*,int *,int ) ;

obs_sceneitem_t *obs_scene_add_group(obs_scene_t *scene, const char *name)
{
 return obs_scene_insert_group(scene, name, ((void*)0), 0);
}
