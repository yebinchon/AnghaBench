
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int enum_items_proc ;
 int ls_get_libobs_obj (int,int,int*) ;
 int lua_newtable (int *) ;
 int obs_scene_enum_items (int,int ,int *) ;
 int obs_scene_t ;
 int scene ;

__attribute__((used)) static int scene_enum_items(lua_State *script)
{
 obs_scene_t *scene;
 if (!ls_get_libobs_obj(obs_scene_t, 1, &scene))
  return 0;

 lua_newtable(script);
 obs_scene_enum_items(scene, enum_items_proc, script);
 return 1;
}
