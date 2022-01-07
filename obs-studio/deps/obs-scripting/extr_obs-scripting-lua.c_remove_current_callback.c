
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int UNUSED_PARAMETER (int *) ;
 scalar_t__ current_lua_cb ;
 int remove_lua_obs_callback (scalar_t__) ;

__attribute__((used)) static int remove_current_callback(lua_State *script)
{
 UNUSED_PARAMETER(script);
 if (current_lua_cb)
  remove_lua_obs_callback(current_lua_cb);
 return 0;
}
