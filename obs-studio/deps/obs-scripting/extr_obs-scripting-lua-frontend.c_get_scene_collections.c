
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int bfree (char**) ;
 int lua_newtable (int *) ;
 int lua_pushstring (int *,char*) ;
 int lua_rawseti (int *,int,int) ;
 char** obs_frontend_get_scene_collections () ;

__attribute__((used)) static int get_scene_collections(lua_State *script)
{
 char **names = obs_frontend_get_scene_collections();
 char **name = names;
 int i = 0;

 lua_newtable(script);

 while (name && *name) {
  lua_pushstring(script, *name);
  lua_rawseti(script, -2, ++i);
  name++;
 }

 bfree(names);
 return 1;
}
