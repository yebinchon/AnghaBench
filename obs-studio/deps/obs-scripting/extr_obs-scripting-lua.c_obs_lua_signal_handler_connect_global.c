
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int extra; } ;
struct lua_obs_callback {TYPE_1__ base; } ;
typedef int lua_State ;


 struct lua_obs_callback* add_lua_obs_callback (int *,int) ;
 int calldata_set_ptr (int *,char*,int) ;
 int defer_call_post (int ,struct lua_obs_callback*) ;
 int defer_connect_global ;
 int handler ;
 int is_function (int *,int) ;
 int ls_get_libobs_obj (int,int,int*) ;
 int signal_handler_t ;

__attribute__((used)) static int obs_lua_signal_handler_connect_global(lua_State *script)
{
 signal_handler_t *handler;

 if (!ls_get_libobs_obj(signal_handler_t, 1, &handler))
  return 0;
 if (!is_function(script, 2))
  return 0;

 struct lua_obs_callback *cb = add_lua_obs_callback(script, 2);
 calldata_set_ptr(&cb->base.extra, "handler", handler);
 defer_call_post(defer_connect_global, cb);
 return 0;
}
