
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lua_obs_callback {int dummy; } ;
typedef int lua_State ;


 struct lua_obs_callback* add_lua_obs_callback (int *,int) ;
 int add_save_callback_defer ;
 int defer_call_post (int ,struct lua_obs_callback*) ;
 int is_function ;
 int verify_args1 (int *,int ) ;

__attribute__((used)) static int add_save_callback(lua_State *script)
{
 if (!verify_args1(script, is_function))
  return 0;

 struct lua_obs_callback *cb = add_lua_obs_callback(script, 1);
 defer_call_post(add_save_callback_defer, cb);
 return 0;
}
