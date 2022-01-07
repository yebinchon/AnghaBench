
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lua_obs_callback {int dummy; } ;
typedef int lua_State ;


 struct lua_obs_callback* find_lua_obs_callback (int *,int) ;
 int is_function ;
 int remove_lua_obs_callback (struct lua_obs_callback*) ;
 int verify_args1 (int *,int ) ;

__attribute__((used)) static int remove_event_callback(lua_State *script)
{
 if (!verify_args1(script, is_function))
  return 0;

 struct lua_obs_callback *cb = find_lua_obs_callback(script, 1);
 if (cb) {
  remove_lua_obs_callback(cb);
 }
 return 0;
}
