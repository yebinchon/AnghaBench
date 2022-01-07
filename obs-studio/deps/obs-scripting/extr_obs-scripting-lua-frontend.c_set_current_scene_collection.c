
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 scalar_t__ lua_isstring (int *,int) ;
 char* lua_tostring (int *,int) ;
 int obs_frontend_set_current_scene_collection (char const*) ;

__attribute__((used)) static int set_current_scene_collection(lua_State *script)
{
 if (lua_isstring(script, 1)) {
  const char *name = lua_tostring(script, 1);
  obs_frontend_set_current_scene_collection(name);
 }
 return 0;
}
