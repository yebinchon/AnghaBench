
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int extra; int on_remove; } ;
struct lua_obs_callback {TYPE_1__ base; } ;
typedef scalar_t__ obs_hotkey_id ;
typedef int lua_State ;
typedef int lua_Integer ;


 scalar_t__ OBS_INVALID_HOTKEY_ID ;
 struct lua_obs_callback* add_lua_obs_callback (int *,int) ;
 int calldata_set_int (int *,char*,scalar_t__) ;
 int hotkey_callback ;
 int is_function (int *,int) ;
 int lua_pushinteger (int *,int ) ;
 char* lua_tostring (int *,int) ;
 scalar_t__ obs_hotkey_register_frontend (char const*,char const*,int ,struct lua_obs_callback*) ;
 int on_remove_hotkey ;
 int remove_lua_obs_callback (struct lua_obs_callback*) ;

__attribute__((used)) static int hotkey_register_frontend(lua_State *script)
{
 obs_hotkey_id id;

 const char *name = lua_tostring(script, 1);
 if (!name)
  return 0;
 const char *desc = lua_tostring(script, 2);
 if (!desc)
  return 0;
 if (!is_function(script, 3))
  return 0;

 struct lua_obs_callback *cb = add_lua_obs_callback(script, 3);
 cb->base.on_remove = on_remove_hotkey;
 id = obs_hotkey_register_frontend(name, desc, hotkey_callback, cb);
 calldata_set_int(&cb->base.extra, "id", id);
 lua_pushinteger(script, (lua_Integer)id);

 if (id == OBS_INVALID_HOTKEY_ID)
  remove_lua_obs_callback(cb);
 return 1;
}
