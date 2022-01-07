
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_lua_script {int base; } ;
typedef int lua_State ;


 struct obs_lua_script* current_lua_script ;
 char* lua_tostring (int *,int) ;
 int script_info (int *,char*,char const*) ;

__attribute__((used)) static int hook_print(lua_State *script)
{
 struct obs_lua_script *data = current_lua_script;
 const char *msg = lua_tostring(script, 1);
 if (!msg)
  return 0;

 script_info(&data->base, "%s", msg);
 return 0;
}
