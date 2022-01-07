
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int bfree (char*) ;
 int lua_pushstring (int *,char*) ;
 char* obs_frontend_get_current_profile () ;

__attribute__((used)) static int get_current_profile(lua_State *script)
{
 char *name = obs_frontend_get_current_profile();
 lua_pushstring(script, name);
 bfree(name);
 return 1;
}
