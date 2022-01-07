
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_getglobal (int *,char*) ;
 int lua_pop (int *,int) ;
 int lua_pushcfunction (int *,int ) ;
 int lua_pushstring (int *,char*) ;
 int lua_rawset (int *,int) ;
 int obs_lua_register_source ;

void add_lua_source_functions(lua_State *script)
{
 lua_getglobal(script, "obslua");

 lua_pushstring(script, "obs_register_source");
 lua_pushcfunction(script, obs_lua_register_source);
 lua_rawset(script, -3);

 lua_pop(script, 1);
}
