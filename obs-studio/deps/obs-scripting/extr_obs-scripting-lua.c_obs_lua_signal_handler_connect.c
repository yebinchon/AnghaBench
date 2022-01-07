
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
 int calldata_set_string (int *,char*,char const*) ;
 int defer_call_post (int ,struct lua_obs_callback*) ;
 int defer_connect ;
 int handler ;
 int is_function (int *,int) ;
 int ls_get_libobs_obj (int,int,int*) ;
 char* lua_tostring (int *,int) ;
 int signal_handler_t ;

__attribute__((used)) static int obs_lua_signal_handler_connect(lua_State *script)
{
 signal_handler_t *handler;
 const char *signal;

 if (!ls_get_libobs_obj(signal_handler_t, 1, &handler))
  return 0;
 signal = lua_tostring(script, 2);
 if (!signal)
  return 0;
 if (!is_function(script, 3))
  return 0;

 struct lua_obs_callback *cb = add_lua_obs_callback(script, 3);
 calldata_set_ptr(&cb->base.extra, "handler", handler);
 calldata_set_string(&cb->base.extra, "signal", signal);
 defer_call_post(defer_connect, cb);
 return 0;
}
