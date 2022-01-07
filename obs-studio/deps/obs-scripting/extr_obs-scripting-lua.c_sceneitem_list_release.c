
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int item ;
 int ls_get_libobs_obj (int,int,int*) ;
 int lua_pop (int *,int) ;
 int lua_rawgeti (int *,int,int) ;
 size_t lua_rawlen (int *,int) ;
 int obs_sceneitem_release (int) ;
 int obs_sceneitem_t ;

__attribute__((used)) static int sceneitem_list_release(lua_State *script)
{
 size_t count = lua_rawlen(script, 1);
 for (size_t i = 0; i < count; i++) {
  obs_sceneitem_t *item;

  lua_rawgeti(script, 1, (int)i + 1);
  ls_get_libobs_obj(obs_sceneitem_t, -1, &item);
  lua_pop(script, 1);

  obs_sceneitem_release(item);
 }
 return 0;
}
